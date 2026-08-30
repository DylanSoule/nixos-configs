{ config, pkgs, lib, ... }:

let
  cfg = config.systemopt.steam;
in
{
  options.systemopt.steam = {
    enable = lib.mkEnableOption "Steam and steam remote play";
  };

  config = lib.mkIf cfg.enable {
    programs.steam = {
      enable = true;
      remotePlay.openFirewall = true;
    };
  };
}
