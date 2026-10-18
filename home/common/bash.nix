{ pkgs, ... }:

{
  home.sessionsVariables = {
    XDG_CONFIG_HOME = /home/dylans/.config/mango;
  };
  programs.bash = {
    enable = true;
    shellAliases = {
      ll = "ls -l";
      ".." = "cd ..";
    };
  };
}
