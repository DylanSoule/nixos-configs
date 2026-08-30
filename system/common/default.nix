{ inputs, ... }:

{
  nixpkgs.overlays = [
    inputs.vscode-extensions.overlays.default
  ];

  imports = [
    ./bluetooth.nix
    ./brave.nix
    ./clamav.nix
    ./desktop.nix
    ./location-settings.nix
    ./root-packages.nix
    ./steam.nix
    ./virtualisation.nix
    ./wine.nix
    ./bootloader.nix
    ./nix.nix
    ./networking.nix
  ];
}
