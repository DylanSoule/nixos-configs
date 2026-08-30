{ pkgs, ... }:

{
  programs.git = {
    enable = true;
    settings = {
      user = {
	userName = "DylanSoule";
        userEmail = "dylan.soule@icloud.com";
      };
    };
  };
}
