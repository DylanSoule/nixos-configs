{ ylib, ... }:

{
  imports = ylib.umport {
    paths = [ ./. ];
    exclusive = [ ./default.nix ];
    recursive = true;
  };
}
