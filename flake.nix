{

  description = "System Flake";
  
  inputs = {
    nixpkgs.url = "nixpkgs/nixos-26.05";

    home-manager = {
      url = "github:nix-community/home-manager/release-26.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    
    vscode-extensions = {
      url = "github:nix-community/nix-vscode-extensions";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = inputs@{ nixpkgs, home-manager, vscode-extensions, ... }:
    let
      lib = nixpkgs.lib;
    in {
    nixosConfigurations = {
      dylans-pc = lib.nixosSystem {
        system = "x86_64-linux";
        modules = [
	  {
	    nixpkgs.config.allowUnfree = true;
	    nixpkgs.overlays = [
	      inputs.vscode-extensions.overlays.default
	    ];
	  }

          ./configuration.nix
 
	  home-manager.nixosModules.home-manager
	  {
	    home-manager.useGlobalPkgs = true;
	    home-manager.useUserPackages = true;
	    home-manager.users.dylans = import ./home.nix;
	    home-manager.extraSpecialArgs = { inherit inputs; };
	    home-manager.backupFileExtension = "backup";
	  }
        ];
      };
    };
  };
}
