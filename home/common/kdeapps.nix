{ pkgs, ... }:

{
  home.packages = with pkgs; [
    kdePackages.qtwebengine
    kdePackages.kate
  ];
}
