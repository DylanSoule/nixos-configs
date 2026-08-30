{ pkgs, ... }:

{
  home.packages = with pkgs; [
    nmap
    # others along the way
  ];
}
