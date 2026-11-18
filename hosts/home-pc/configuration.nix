{ pkgs, ... }:

{
  imports = [
    ./hardware-configuration.nix
    ../../system/common  # Auto-loads system/common/default.nix
    ../../system/desktop # Auto-loads system/desktop/default.nix
  ];

  # Host-specific system identity & hardware settings
  networking.hostName = "dylans-pc";

  # Primary User Definition
  users.users.dylans = {
    isNormalUser = true;
    description = "Dylan Soule";
    extraGroups = [ "networkmanager" "wheel" "libvirtd" ];
  };

  systemopt.steam.enable = true;
  
  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  system.stateVersion = "26.05";

  nix.settings = {
    extra-substituters = [
      "https://nix.wimpys.world"
    ];

    extra-trusted-public-keys = [
      "nix.wimpys.world-1:fphFHD2f+iEG5G81lFRgU84MB6N9ScHGFvB6D64tLmo="
    ];
  };
}
