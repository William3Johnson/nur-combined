with builtins;
rec {
  flake = builtins.getFlake (toString ./.);
  pkgs = import <nixpkgs> {};
  lib = pkgs.lib;
  default = import ./default.nix;
}
