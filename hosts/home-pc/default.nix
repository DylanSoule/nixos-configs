{ inputs, pkgs-unstable, ylib, ... }:

{
  imports = [
    ./configuration.nix
    inputs.home-manager.nixosModules.home-manager
    {
      home-manager = {
        useGlobalPkgs = true;      
        useUserPackages = true;
        backupFileExtension = "backup";
	extraSpecialArgs = {
	  inherit inputs pkgs-unstable ylib;
	};
        
        users.dylans = {
	  imports = [
	    ./home.nix
          ];
	};
      };
    }
  ];
}
