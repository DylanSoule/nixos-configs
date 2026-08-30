{ pkgs, ... }:

{
  home.manager = with.pkgs; [
    godot
  ];
}
