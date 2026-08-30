{ pkgs, ... }:

{
  harware.bluetooth = {
    enable = true;
    powerOnBoot = true;
  };
}
