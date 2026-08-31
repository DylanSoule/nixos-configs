{ pkgs, ... }:

{
  xdg.desktopEntries.apple-music = {
    name = "Apple Music";
    comment = "Apple Music Web App";
    exec = "${pkgs.brave}/bin/brave-stable --app=https://music.apple.com --ozone-platform-hint=auto";
    terminal = false;
    type = "Application";
    icon = "multimedia-audio-player";
    categories = [ "AudioVideo" "Audio" "Player" ];
  };
}
