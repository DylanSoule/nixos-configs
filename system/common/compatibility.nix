{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    wineWow64Packages.stable
    direnv
    ffmpeg
  ];

  programs.nix-ld.enable = true;

  programs.appimage = {
    enable = true;
    binfmt = true;
  };

  environment.sessionVariables = {
    WEBKIT_DISABLE_DMABUF_RENDERER = "0";
  };
}
