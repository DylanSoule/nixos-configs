{ pkgs, ... }:

{
  imports = [
    ../../home/common   # Auto-loads home/common/default.nix
    ../../home/desktop  # Auto-loads home/desktop/default.nix
  ];

  home.username = "dylans";
  home.homeDirectory = "/home/dylans";

  # Enable any custom option flags defined in your modules (e.g., user.gaming.enable)
  # user.gaming.enable = true;

  user.gaming.enable = true;

  home.stateVersion = "26.05";
}
