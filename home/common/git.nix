{ pkgs, ... }:

{
  programs.git = {
    enable = true;
    settings = {
      user = {
        name = "DylanSoule";
        email = "dylan.soule@icloud.com";
      };
    };
  };
}
