{ pkgs-unstable, ... }:

{
  home.packages = with pkgs-unstable; [
    stirling-pdf-desktop 
  ];
}
