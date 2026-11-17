{ pkgs, ... }:

{
  home.packages = with pkgs; [
    tree
    unrar
    fastfetch
    p7zip
  ];

  programs.neovim = {
    enable = true;
    defaultEditor = true;
  };
}
