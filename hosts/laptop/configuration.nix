{ pkgs, ... }:

{
  imports = [
    ./hardware-configuration.nix
    ../../system/common  # Auto-loads system/common/default.nix
    ../../system/laptop # Auto-loads system/laptop/default.nix
  ];

  # Host-specific system identity & hardware settings
  networking.hostName = "dylans-laptop";

  # Primary User Definition
  users.users.dylans = {
    isNormalUser = true;
    description = "Dylan Soule";
    extraGroups = [ "networkmanager" "wheel" "libvirtd" ];
  };

  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  services.tlp = {
    enable = true;
    settings = {
      STOP_CHARGE_THRESH_BAT0 = 80; # 80 and above it stops charging
    };
  };
  services.power-profiles-daemon.enable = false;

  systemopt.steam.enable = true;

  system.stateVersion = "26.05";
}


