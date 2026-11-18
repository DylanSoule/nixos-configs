{ pkgs, ... }:

{
  imports = [
    ./hardware-configuration.nix
    ../../system/common  # Auto-loads system/common/default.nix
    ../../system/laptop # Auto-loads system/laptop/default.nix
  ];

  # Host-specific system identity & hardware settings
  networking.hostName = "idea-laptop-05";

  # Primary User Definition
  users.users.dylans = {
    isNormalUser = true;
    description = "Dylan Soule";
    extraGroups = [ "networkmanager" "wheel" "libvirtd" ];
  };

  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  services.power-profiles-daemon.enable = false;

  nix.settings = {
    extra-substituters = [
      "https://nix.wimpys.world"
    ];

    extra-trusted-public-keys = [
      "nix.wimpys.world-1:fphFHD2f+iEG5G81lFRgU84MB6N9ScHGFvB6D64tLmo="
    ];
  };

  systemopt.steam.enable = true;

  system.stateVersion = "26.05";
}


