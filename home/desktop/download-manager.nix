{ pkgs, pkgs-unstable, ... }:

{
  home.packages = [i
    pkgs-unstable.qbittorrent
  ];
}

