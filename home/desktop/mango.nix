{ inputs, pkgs-unstable, ... }:

{
  home.packages = with pkgs-unstable; [
    # Screenshots
    grim
    slurp

    # File Managers
    yazi
    ];
}
