{ ... }:

{
  hardware.enableRedistributableFirmware = true;
  
  networking.nameservers = [ "8.8.8.8" "1.1.1.1"];
  networking.networkmanager.wifi.powersave = false;
}
