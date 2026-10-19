{ pkgs-unstable, ... }:

{
  gtk = {
    enable = true;

    theme = {
      name = "Colloid-Dark";
      package = pkgs-unstable.colloid-gtk-theme;
    };
  };

  dconf.settings = {
    "org/gnome/desktop/interface" = {
      gtk-theme = "Colloid-Dark";
      color-scheme = "prefer-dark";
    };
  };
}
