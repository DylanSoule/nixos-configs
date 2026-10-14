{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    python314
  ];

  programs.direnv.enable = true;
}
