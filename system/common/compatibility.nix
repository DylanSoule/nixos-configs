{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    wineWow64Packages.stable
  ];

  programs.appimage.enable = true;
}
