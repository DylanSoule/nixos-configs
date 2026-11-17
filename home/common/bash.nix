{ pkgs, ... }:

{
  home.sessionVariables = {
    NOCTALIA_CONFIG_HOME = "/home/dylans/.config";
  };
  programs.bash = {
    enable = true;
    shellAliases = {
      ll = "ls -l";
      ".." = "cd ..";
    };
  };
}
