{ inputs, pkgs-unstable, ... }:

{
  imports = [inputs.mangobar.homeManagerModules.default ];

  home.packages = with pkgs-unstable; [
    rofi
  ];

  services.mangobar = {
    enable = true;
    systemdTarget = "mango.target";
  };
}
