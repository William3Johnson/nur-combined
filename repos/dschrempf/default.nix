# This file describes your repository contents.
# It should return a set of nix derivations
# and optionally the special attributes `lib`, `modules` and `overlays`.
# It should NOT import <nixpkgs>. Instead, you should take pkgs as an argument.
# Having pkgs default to <nixpkgs> is fine though, and it lets you use short
# commands such as:
#     nix-build -A mypackage

{ pkgs ? import <nixpkgs> {} }:

{
  # The `lib`, `modules`, and `overlay` names are special
  lib = import ./lib { inherit pkgs; }; # functions
  modules = import ./modules; # NixOS modules
  overlays = import ./overlays; # nixpkgs overlays

  # Evolution.
  beast = pkgs.callPackage ./pkgs/evolution/beast {};
  beast2 = pkgs.callPackage ./pkgs/evolution/beast2 {};
  figtree = pkgs.callPackage ./pkgs/evolution/figtree {};
  iqtree2 = pkgs.callPackage ./pkgs/evolution/iqtree2 {};
  tracer = pkgs.callPackage ./pkgs/evolution/tracer {};

  # Misc.
  biblib = pkgs.callPackage ./pkgs/misc/biblib {};
  frida = pkgs.callPackage ./pkgs/misc/frida {};
  frida-tools = pkgs.callPackage ./pkgs/misc/frida-tools {
    frida = pkgs.callPackage ./pkgs/misc/frida {};
  };
  # TODO: nvd fails.
  # nvd = import (pkgs.fetchFromGitLab {
  #   owner = "khumba";
  #   repo = "nvd";
  #   rev = "7cdaa6d818119bd7a51930d990fded5d594c6623";
  #   sha256 = "sha256-dQcfoMtRGg+SRvgY9pbSqlyeTozlHp3qE70egSEiFX0=";
  # }) { inherit pkgs; };
  signal-back = pkgs.callPackage ./pkgs/misc/signal-back {};
}
