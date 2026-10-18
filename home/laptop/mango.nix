{ inputs, pkgs-unstable, ... }:

{
  home.packages = with pkgs-unstable; [
    nerd-fonts.jetbrains-mono
  ];

  fonts.fontconfig.enable = true;
}
