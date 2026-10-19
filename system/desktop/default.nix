{ ... }:

{
  imports = [
    ./sunshine.nix
    ./tailscale.nix
    ./kernel.nix
    ./firewall.nix
    ./flatpak.nix
    ./mango.nix
  ];
}
