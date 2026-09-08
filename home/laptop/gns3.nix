{ pkgs-unstable, ... }:

{
  home.packages = with pkgs-unstable; [
    gns3-gui
    gns3-server
  ];
}
