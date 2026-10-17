{

  description = "System Flake";
  
  inputs = {
    nixpkgs.url = "nixpkgs/nixos-26.05";
    nixpkgs-unstable.url = "nixpkgs/nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager/release-26.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    mango = {
      url = "github:mangowm/mango";
      inputs.nixpkgs.follows = "nixpkgs-unstable";
    };
    mangobar = {
      url = "github:mangowm/mangobar";
      inputs.nixpkgs.follows = "nixpkgs-unstable";
    };
    
    vscode-extensions = {
      url = "github:nix-community/nix-vscode-extensions";
      inputs.nixpkgs.follows = "nixpkgs";
    };

  };

  outputs = inputs@{ 
    self, 
    nixpkgs, 
    nixpkgs-unstable, 
    home-manager, 
    vscode-extensions,
    mango, 
    ... }:
  let
    lib = nixpkgs.lib;

    system = "x86_64-linux";
    
    pkgs-unstable = import nixpkgs-unstable {
      inherit system;
      config.allowUnfree = true;
    };
  in 
  {
    nixosConfigurations = {
      # Desktop Host
      home-pc = nixpkgs.lib.nixosSystem {
        inherit system;

        specialArgs = { 
	  inherit inputs pkgs-unstable; 
	};

        modules = [
          ./hosts/home-pc
        ];
      };

      
      # Laptop Host
      laptop = nixpkgs.lib.nixosSystem {
        inherit system;

        specialArgs = { 
	  inherit inputs pkgs-unstable; 
	};

        modules = [
          ./hosts/laptop
        ];
      };

      # School laptop host
      school-laptop = nixpkgs.lib.nixosSystem {
        inherit system;

        specialArgs = { 
	  inherit inputs pkgs-unstable; 
	};
        modules = [
          ./hosts/school-laptop
        ];

      };
    };
  };
}
