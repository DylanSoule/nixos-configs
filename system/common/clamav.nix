{ pkgs, ... }:

{
  services.clamav = {
    deamon.enable = true;
    updater.enable = true;
    scanner.enable = false;
  };
}
