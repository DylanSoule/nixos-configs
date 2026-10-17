{ inputs, pkgs, ... }:

{
  home.packages = with pkgs; [
    rofi
  ];

  services.mangobar = {
    enable = true;
    systemdTarget = "mango.target";
  };
}
