{ pkgs, ... }:

{
  # Enable KDE Plasma 6 (Wayland by default)
  services.desktopManager.plasma6.enable = true;

  # Display Manager (SDDM) configured natively for Wayland
  services.displayManager.sddm = {
    enable = true;
  };

  # System-wide Keyboard Layout (Used by SDDM, Xwayland, and console)
  services.xserver.xkb = {
    layout = "us";
    variant = "";
  };

  # Sound (Pipewire)
  services.pulseaudio.enable = false;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
  };

  # Fonts
  fonts = {
    enableDefaultPackages = true;
    packages = with pkgs; [
      dejavu_fonts
      cantarell-fonts
      noto-fonts
    ];
    fontconfig = {
      enable = true;
      defaultFonts = {
        sansSerif = [ "Noto Sans" "DejaVu Sans" ];
        serif     = [ "Noto Serif" "DejaVu Serif" ];
        monospace = [ "DejaVu Sans Mono" ];
      };
    };
  };

  # Printing with CUPS, and network printer finding through avahi
  services.printing.enable = true;
  services.avahi = {
    enable = true;
    nssmdns4 = true;
    openFirewall = true;
  };
}
