{ inputs, ylib, ... }:

{
  nixpkgs.overlays = [
    inputs.vscode-extensions.overlays.default
  ];

  imports = ylib.umport {
    paths = [ ./. ];
    exclude = [ ./default.nix ];
    recursive = true;
  };
}
