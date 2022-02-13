# This file describes your repository contents.
# It should return a set of nix derivations
# and optionally the special attributes `lib`, `modules` and `overlays`.
# It should NOT import <nixpkgs>. Instead, you should take pkgs as an argument.
# Having pkgs default to <nixpkgs> is fine though, and it lets you use short
# commands such as:
#     nix-build -A mypackage

{ pkgs ? import <nixpkgs> { } }:

{
  # The `lib`, `modules`, and `overlay` names are special
  lib = import ./lib { inherit pkgs; }; # functions
  modules = import ./modules; # NixOS modules
  overlays = import ./overlays; # nixpkgs overlays

  ## personal
  traffic = pkgs.callPackage ./pkgs/traffic { };
  gh-issues-to-rss = pkgs.callPackage ./pkgs/gh-issues-to-rss { };
  tojson = pkgs.callPackage ./pkgs/tojson { };
  toffee = pkgs.callPackage ./pkgs/toffee { };
  quickserve = pkgs.callPackage ./pkgs/quickserve { };
  gloc = pkgs.callPackage ./pkgs/gloc { };
  nn = pkgs.callPackage ./pkgs/nn { };

  ## external
  fluent-theme = pkgs.callPackage ./pkgs/fluent-theme { };
  kmonad = pkgs.callPackage ./pkgs/kmonad { };
  warpd = pkgs.callPackage ./pkgs/warpd { };
  # notmuch-git = pkgs.callPackage ./pkgs/notmuch-git {};
  gnomeExtensions.steal-my-focus = pkgs.callPackage ./pkgs/steal-my-focus { };
  grpc-gateway = pkgs.callPackage ./pkgs/grpc-gateway { };
  # golang-migrate::tags: postgres mysql redshift cassandra spanner cockroachdb clickhouse file go_bindata github aws_s3 google_cloud_storage godoc_vfs gitlab
  golang-migrate-pg = pkgs.callPackage ./pkgs/golang-migrate { tags = [ "postgres" "file" ]; }; # with proper build tags

  ## programming
  # buf = pkgs.callPackage ./pkgs/buf {};
}
