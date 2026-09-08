{ pkgs, ... }:

{
  home.packages = with pkgs; [
    qt6Packages.qtstyleplugin-kvantum
  ];
}
