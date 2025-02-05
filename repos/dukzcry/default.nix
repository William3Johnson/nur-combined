# This file describes your repository contents.
# It should return a set of nix derivations
# and optionally the special attributes `lib`, `modules` and `overlays`.
# It should NOT import <nixpkgs>. Instead, you should take pkgs as an argument.
# Having pkgs default to <nixpkgs> is fine though, and it lets you use short
# commands such as:
#     nix-build -A mypackage

{ pkgs ? import <nixpkgs> {} }:

let
  unstable' = pkgs.fetchFromGitHub {
    owner = "nixos";
    repo = "nixpkgs";
    rev = "34ad3ffe08adfca17fcb4e4a47bb5f3b113687be";
    sha256 = "02li241rz5668nfyp88zfjilxf0mr9yansa93fbl38hjwkhf3ix6";
  };
  unstable = import unstable' { config.allowUnfree = true; };
  eval = import <nixpkgs/nixos/lib/eval-config.nix>;
  config = (eval {modules = [(import <nixos-config>)];}).config;
  # https://bugs.gentoo.org/804825
  libidn = pkgs.libidn.overrideAttrs (oldAttrs: rec {
    pname = "libidn";
    version = "1.36";
    src = pkgs.fetchurl {
      url = "mirror://gnu/libidn/${pname}-${version}.tar.gz";
      sha256 = "07pyy0afqikfq51z5kbzbj9ldbd12mri0zvx0mfv3ds6bc0g26pi";
    };
  });
in rec {
  # The `lib`, `modules`, and `overlay` names are special
  lib = import ./lib { inherit pkgs; }; # functions
  modules = import ./modules { unstable-path = unstable'; inherit unstable; inherit libidn; }; # NixOS modules
  overlays = import ./overlays { inherit unstable config; wireless-regdb' = wireless-regdb; }; # nixpkgs overlays

  k380-function-keys-conf = pkgs.callPackage ./pkgs/k380-function-keys-conf.nix { };
  knobkraft-orm = pkgs.callPackage ./pkgs/knobkraft-orm.nix { };
  realrtcw = pkgs.callPackage ./pkgs/realrtcw.nix { };
  gamescope = pkgs.callPackage ./pkgs/gamescope.nix { };
  re3 = pkgs.callPackage ./pkgs/re3 {};
  revc = pkgs.callPackage ./pkgs/re3/revc.nix { inherit re3; };
  bitwig-studio3 = pkgs.callPackage ./pkgs/bitwig-studio3.nix {};
  massdns = pkgs.callPackage ./pkgs/massdns.nix {};
  wireless-regdb = pkgs.callPackage ./pkgs/wireless-regdb {};
  edgevpn = pkgs.callPackage ./pkgs/edgevpn.nix {};
  prometheus-nut-exporter = pkgs.callPackage ./pkgs/prometheus-nut-exporter.nix {};
  pulseaudio = pkgs.callPackage ./pkgs/pulseaudio.nix {};
  tun2socks = pkgs.callPackage ./pkgs/tun2socks.nix {};
  cockpit = pkgs.callPackage ./pkgs/cockpit {};
  cockpit-machines = pkgs.callPackage ./pkgs/cockpit/machines.nix {};
  libvirt-dbus = pkgs.callPackage ./pkgs/libvirt-dbus.nix {};
  sunshine = pkgs.callPackage ./pkgs/sunshine.nix {};
}
