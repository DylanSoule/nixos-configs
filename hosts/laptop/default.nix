{ inputs, ... }:

{
  imports = [
    ./configuration.nix
    inputs.home-manager.nixosModules.home-manager
    {
      home-manager.useGlobalPkgs = true;      
      home-manager.useUserPackages = true;
      home-manager.users.dylans = import ./home.nix;
      home-manager.extraSpecialArgs = { inherit inputs; };
      home-manager.backupFileExtension = "backup";
    }
  ];
}

