{ pkgs, ... }:

{
  home.packages = with pkgs; [
    uget
  ];
}

