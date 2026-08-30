{ pkgs, ... }:

{
  home.packages = with pkgs; [
    tree
    unrar
    fastfetch
    neovim # should move to own with config but at a later date
  ];
}
