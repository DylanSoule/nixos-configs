{ inputs, pkgs-unstable, ... }:

{
  home.packages = with pkgs-unstable; [
    nerd-fonts.jetbrains-mono

    # Screenshots
    grim
    slurp

    # File Managers
    yazi
    thunar
  ];

  fonts.fontconfig.enable = true;
}
