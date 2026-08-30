{ config, pkgs, inputs, ... }:

let
  extensions = pkgs.nix-vscode-extensions.vscode-marketplace;
in
{
  programs.vscode = {
    enable = true;
    package = pkgs.vscode.fhs;

    profiles.default = {
      extensions = [
        extensions.dracula-theme.theme-dracula
        extensions.streetsidesoftware.code-spell-checker
        extensions.ms-vscode.hexeditor
        extensions.jnoortheen.nix-ide
        extensions.ms-python.python
        extensions.ms-python.debugpy
        extensions.ms-python.vscode-python-envs
        extensions.ms-python.vscode-pylance
      ];

      userSettings = {
        "workbench.colorTheme" = "Dracula";
        "files.autoSave" = "onFocusChange";
        "editor.inlineSuggest.edits.allowCodeShifting" = "never";
      };
    };
  };
}
