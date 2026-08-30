{ ... }:

{
  networking = {
    hostName = "dylans-pc"; # Define your hostname.
    networkmanager.enable = true; # Enable networking
    firewall = {
      enable = true;
      allowedUDPPorts = [ 9 ];
    };
    interfaces.wlp7s0.wakeOnLan.enable = true;  # Enable WoWLAN
    iproute2.enable = true;
    localCommands = ''ip route add 100.64.0.0/10 dev tailscale0 || true''; # Allow tailscale to route traffic through the VPN interface.
  };
}
