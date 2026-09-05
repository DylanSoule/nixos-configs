{ pkgs, ... }:

{
  home.packages = with pkgs; [
    lufus
  ];
}
