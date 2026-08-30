{ pkgs, ... }:

{
  programs.brave = {
    enable = true;
    package = pkgs.brave; # Optional, as this is the default

    extensions = [
      { id = "eimadpbcbfnmbkopoojfekhnkhdbieeh"; } # Dark Reader
      { id = "ghmbeldphafepmbegfdlkpapadhbakde"; } # Proton Pass
      { id = "jcokkipkhhgiakinbnnplhkdbjbgcgpe"; } # uBlock Origin
    ];

    commandLineArgs = [
      "--ozone-platform=wayland"
      "--enable-features=AcceleratedVideoDecodeLinuxGL,AcceleratedVideoEncoder"
      "--render-node-override=/dev/dri/renderD128"
    ];
  };
}
