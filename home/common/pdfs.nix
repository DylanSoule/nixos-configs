{ pkgs, ... }:

{
  home.packages = with pkgs-unstable; [
    stirling-pdf-desktop 
  ];
}
