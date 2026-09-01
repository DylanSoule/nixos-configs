# will do later after basic modularity set up
{ pkgs, ... }:

{
  home.packages = with pkgs ; [
    candy-icons
    sweet
    kdePackages.qtstyleplugin-kvantum
  ];
}
