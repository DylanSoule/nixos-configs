{ pkgs, ... }:

{
  imports = [
    ../../home/common   # Auto-loads home/common/default.nix
    ../../home/laptop  # Auto-loads home/laptop/default.nix
  ];

  home.username = "dylans";
  home.homeDirectory = "/home/dylans";

  # Enable any custom option flags defined in your modules (e.g., user.gaming.enable)
  # user.gaming.enable = true;

  user.gaming.enable = false;

  home.stateVersion = "26.05";
}

