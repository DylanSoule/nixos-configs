{ inputs, ... }:

{
  imports = [
    ./configuration.nix
    inputs.home-manager.nixosModules.home-manager
    {
      home-manager = {
        useGlobalPkgs = true;      
        useUserPackages = true;
        extraSpecialArgs = { inherit inputs; };
        backupFileExtension = "backup";
        
        users.dylans = {
	  imports = [
	    ./home.nix
          ];
	};
      };
    }
  ];
}
