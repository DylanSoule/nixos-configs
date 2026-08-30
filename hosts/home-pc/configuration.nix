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

  system.stateVersion = "26.05";
}
