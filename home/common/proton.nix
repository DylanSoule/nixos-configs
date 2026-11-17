{ pkgs-unstable, ... }:

{
  home.packages = with pkgs-unstable; [
    proton-vpn
    proton-pass
  ];
}
