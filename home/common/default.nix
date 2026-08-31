{ pkgs, ... }:

{
  imports = [
    ./bash.nix
    ./brave.nix
    ./engineering.nix
    ./gaming.nix
    ./git.nix
    ./kdeapps.nix
    ./networking.nix
    ./proton.nix
    ./terminal-utils.nix
    ./vscode.nix
    ./apple-music.nix
  ];
}
