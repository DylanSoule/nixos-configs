{ inputs, pkgs-unstable, ... }:

{
  home.packages = with pkgs-unstable; [
    nerd-fonts.jetbrains-mono

    # Screenshots
    grim
    slurp
  ];

  fonts.fontconfig.enable = true;
}
