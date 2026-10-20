{ pkgs, ... }:

{
  home.packages = with pkgs; [
    tree
    unrar
    fastfetch
  ];

  programs.neovin = {
    enable = true;;
    defaultEditor = true;
  };
}
