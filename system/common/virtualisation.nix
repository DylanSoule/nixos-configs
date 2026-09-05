{ pkgs, ... }:

{
  virtualisation.virtualbox.host = {
    enable = true;
  };
  users.extraGroups.vboxusers.members = [ "dylans" ];
  xdg.portal = {
    enable = true;
    extraPortals = with pkgs; [
      xdg-desktop-portal-gtk
      # xdg-desktop-portal-wlr # Optional: include if using wlroots compositors like Sway/River
    ];
  };
}
