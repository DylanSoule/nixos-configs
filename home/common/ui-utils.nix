{ pkgs-unstable, ... }:

{
  home.packages = with pkgs-unstable; [
    seahorse
    thunderbird
  ];
}
