{ pkgs, ... }:

{
  home.packages = with pkgs; [
    (olympus.override { celesteWrapper = "steam-run"; })
  ];
}
