{ config, lib, pkgs, ... }:

let
  cfg = config.user.gaming;
in
{
  options.user.gaming = {
    enable = lib.mkEnableOption "Enable Extra Gaming";
  };
  
  config = lib.mkIf cfg.enable {
    home.packages = with pkgs; [
      prismlauncher
      r2modman
    ];
  };
}
