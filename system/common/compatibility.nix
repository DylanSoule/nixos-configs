{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    wineWow64Packages.stable
    direnv
  ];

  programs.appimage.enable = true;

  environment.sessionVariables = {
    WEBKIT_DISABLE_DMABUF_RENDERER = "0";
  };
}
