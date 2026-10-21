{ ylib, ... }:

{
  imports = ylib.umport {
    paths = [ ./. ];
    exclude = [ ./default.nix ];
    recursive = true;
  };
}
