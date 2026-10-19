{ pkgs-unstable, ... }:

{
  gtk = {
    enable = true;

    theme = {
        name = "Colloid-Dark";
        package = pkgs-unstable.colloid-gtk-theme;
      };
    iconTheme = {
      name = "Papirus-Dark";
      package = pkgs-unstable.papirus-icon-theme;
    };
  };

  dconf.settings = {
    "org/gnome/desktop/interface" = {
      gtk-theme = "Colloid-Dark";
      color-scheme = "prefer-dark";
    };
  };

  home.pointerCursor = {
    enable = true;
    name = "Bibata-Modern-Classic";
    package = pkgs-unstable.bibata-cursors;
    size = 24;

    gtk.enable = true;
    x11.enable = true;
  };
}
