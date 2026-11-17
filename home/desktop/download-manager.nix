{ pkgs, pkgs-unstable, ... }:

{
  home.packages = [
    pkgs.uget

    pkgs-unstable.qbittorrent
  ];
}

