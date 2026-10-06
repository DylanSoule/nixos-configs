{ pkgs, inputs, ... }:

{
  boot.kernelPackages = inputs.nixpkgs-unstable.linuxPackages_latest;
}
