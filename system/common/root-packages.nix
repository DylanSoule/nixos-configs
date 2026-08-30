{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    vim
    git
    dnsmasq
  ];
}
