{ inputs, pkgs-unstable, ... }:

{
  imports = [
    inputs.mango.nixosModules.mango
    inputs.noctalia.nixosModules.default
  ];

  programs.mango.enable = true;

  programs.noctalia = {
    enable = true;

    recommendedServices.enable = true;
  };

  # thunar
  programs.thunar.enable = true;
  programs.xfconf.enable = true;
  programs.dconf.enable = true;
    
  services.gvfs.enable = true;
  services.tumbler.enable = true;

  fonts.fontconfig.enable = true;

  # Fonts, including terminal icons
  fonts.packages = with pkgs-unstable; [
    nerd-fonts.jetbrains-mono
  ];

  # Icon theme and desktop utilities
  environment.systemPackages = with pkgs-unstable; [
    papirus-icon-theme
  ];
}
