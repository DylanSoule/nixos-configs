{ pkgs-unstable, ... }:

{ 
  home.packages = with pkgs-unstable; [
    gsettings-desktop-schemas
  ];

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

  dconf.enable = true;

  dconf.settings = {
    "org/gnome/desktop/interface" = {
      gtk-theme = "Colloid-Dark";
      icon-theme = "Papirus-Dark";
      cursor-theme = "Bibata-Modern-Classic";
      cursor-size = 24;
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
