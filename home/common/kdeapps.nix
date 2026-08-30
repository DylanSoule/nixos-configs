{ pkgs, ... }:

{
  home.manager = with.pkgs; [
    kdePackages.kate
  ];
}
