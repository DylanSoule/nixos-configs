{ pkgs, ... }:

{
  home.packages = with pkgs; [
    tree
    unrar
    fastfetch
  ];

  programs.neovim = {
    enable = true;
    defaultEditor = true;
  };
}
