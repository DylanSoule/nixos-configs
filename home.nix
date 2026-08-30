{ config, pkgs, ... }:

{
  imports = [
    ./programs/vscode.nix
  ];


  home.username = "dylans";
  home.homeDirectory = "/home/dylans";

  # Import files from the current configuration directory into the Nix store,
  # and create symbolic links pointing to those store files in the Home directory.

  # home.file.".config/i3/wallpaper.jpg".source = ./wallpaper.jpg;

  # Import the scripts directory into the Nix store,
  # and recursively generate symbolic links in the Home directory pointing to the files in the store.
  # home.file.".config/i3/scripts" = {
  #   source = ./scripts;
  #   recursive = true;   # link recursively
  #   executable = true;  # make all files executable
  # };

  # encode the file content in nix configuration file directly
  # home.file.".xxx".text = ''
  #     xxx
  # '';

  # Packages that should be installed to the user profile.
  home.packages = with pkgs; [
    fastfetch
    nmap
    tree
    freecad
    kdePackages.kate
    proton-vpn
    proton-pass
    godot
    qbittorrent
    godot
    brave
    lumafly
    r2modman
    protontricks
    unrar
    prismlauncher
  ];

  # basic configuration of git, please change to your own
  programs.git = {
    enable = true;
    settings = {
      user = {
        userName = "DylanSoule";
        userEmail = "dylan.soule@icloud.com";
      };
    };
  };

  programs.bash = {
    enable = true;
    shellAliases = {
      ll = "ls -l";
    };
  };
  
  programs.neovim = {
    enable = true;
  };

  programs.discord = {
    enable = true;
  };

  
  # This value determines the home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update home Manager without changing this value. See
  # the home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "26.05";
}
