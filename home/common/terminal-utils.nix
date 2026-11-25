{ pkgs, ... }:

{
  home.packages = with pkgs; [
    tree
    unrar
    fastfetch
    p7zip
    wl-clipboard
  ];

  programs.neovim = {
    enable = true;
    defaultEditor = true;
  };
}
