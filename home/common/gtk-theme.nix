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
      cursor-theme = "BreezeX-Black";
      cursor-size = 24;
      color-scheme = "prefer-dark";
    };
  };
  home.pointerCursor = let
    getFrom = url: hash: name: {
      enable = true;
      name = name;
      size = 24;
      package = pkgs-unstable.runCommand "moveUp" {} ''
        mkdir -p $out/share/icons
        ln -s ${pkgs-unstable.fetchzip {
          url = url;
          hash = hash;
        }} $out/share/icons/${name}
      '';
      gtk.enable = true;
      x11.enable = true;
    };
  in getFrom "https://github.com/ful1e5/BreezeX_Cursor/releases/download/v2.0.1/BreezeX-Black.tar.xz" "sha256-uRmCyFVpVN+47r9HXErxZQjheGdLPcGJTwc+mDvF9Os=" "BreezeX-Black";
}
