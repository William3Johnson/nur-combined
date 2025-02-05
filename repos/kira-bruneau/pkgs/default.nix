final: prev:

with final;

let
  callPackage = pkgs.newScope final;
  pythonOverrides = import ./development/python-modules final;
in
{
  inherit callPackage;

  bcml = bcml-qt;

  bcml-gtk = python3Packages.callPackage ./games/bcml {
    gui = "gtk";
    wrapQtAppsHook = null;
    nodejs = nodejs-14_x;
  };

  bcml-qt = python3Packages.callPackage ./games/bcml {
    gui = "qt";
    inherit (qt5) wrapQtAppsHook;
    nodejs = nodejs-14_x;
  };

  bluetooth-autoconnect = python3Packages.callPackage ./tools/bluetooth/bluetooth-autoconnect { };

  caprine = callPackage ./applications/networking/instant-messengers/caprine {
    nodejs = nodejs-14_x;
  };

  ccache = callPackage ./development/tools/misc/ccache { };

  clonehero = clonehero-fhs-wrapper;
  clonehero-fhs-wrapper = callPackage ./games/clonehero/fhs-wrapper.nix { };
  clonehero-unwrapped = callPackage ./games/clonehero { };
  clonehero-xdg-wrapper = callPackage ./games/clonehero/xdg-wrapper.nix { };

  cmake-language-server = python3Packages.callPackage ./development/tools/misc/cmake-language-server {
    inherit cmake;
  };

  electron-wayland = callPackage ./development/tools/electron-wayland {
    # electron_16 currently SEGFAULTS
    electron = electron_15;
  };

  gamemode = callPackage ./tools/games/gamemode rec {
    libgamemode32 = (pkgsi686Linux.callPackage ./tools/games/gamemode {
      inherit libgamemode32;
    }).lib;
  };

  git-review = python3Packages.callPackage ./applications/version-management/git-review { };

  goverlay = callPackage ./tools/graphics/goverlay {
    inherit (qt5) wrapQtAppsHook;
  };

  krane = callPackage ./applications/networking/cluster/krane { };

  lightdm-webkit2-greeter = callPackage ./applications/display-managers/lightdm-webkit2-greeter { };

  mangohud = callPackage ./tools/graphics/mangohud rec {
    libXNVCtrl = linuxPackages.nvidia_x11.settings.libXNVCtrl;
    mangohud32 = pkgsi686Linux.callPackage ./tools/graphics/mangohud {
      libXNVCtrl = linuxPackages.nvidia_x11.settings.libXNVCtrl;
      inherit mangohud32;
      inherit (pkgs.python3Packages) Mako;
    };
    inherit (pkgs.python3Packages) Mako;
  };

  newsflash = callPackage ./applications/networking/feedreaders/newsflash { };

  poke = callPackage ./applications/editors/poke { };

  pokemmo-installer = callPackage ./games/pokemmo-installer {
    jre = jdk11;
    inherit (gnome) zenity;
  };

  protontricks = python3Packages.callPackage ./tools/package-management/protontricks {
    inherit steam-run yad;
  };

  python2Packages = recurseIntoAttrs (pythonOverrides (pkgs.python2Packages // python2Packages) pkgs.python2Packages);
  python3Packages = recurseIntoAttrs (pythonOverrides (pkgs.python3Packages // python3Packages) pkgs.python3Packages);

  replay-sorcery = callPackage ./tools/video/replay-sorcery { };

  rofi-wayland = prev.rofi.override {
    rofi-unwrapped = callPackage ./applications/misc/rofi-wayland { };
  };

  runescape-launcher = callPackage ./games/runescape-launcher/fhsenv.nix { };

  texlab = callPackage ./development/tools/misc/texlab {
    inherit (darwin.apple_sdk.frameworks) Security CoreServices;
  };

  themes = recurseIntoAttrs (callPackage ./data/themes { });

  undistract-me = callPackage ./shells/bash/undistract-me { };

  virtualparadise = callPackage ./games/virtualparadise {
    inherit (qt5) wrapQtAppsHook;
  };

  vkBasalt = callPackage ./tools/graphics/vkBasalt rec {
    vkBasalt32 = pkgsi686Linux.callPackage ./tools/graphics/vkBasalt {
      inherit vkBasalt32;
    };
  };

  VVVVVV = callPackage ./games/VVVVVV/with-assets.nix {
    inherit (darwin.apple_sdk.frameworks) Foundation;
  };

  xpadneo = callPackage ./os-specific/linux/xpadneo {
    kernel = linux;
  };

  yabridge = callPackage ./tools/audio/yabridge {
    wine = wineWowPackages.staging;
  };

  yabridgectl = callPackage ./tools/audio/yabridgectl {
    wine = wineWowPackages.staging;
  };

  zynaddsubfx = zyn-fusion;

  zynaddsubfx-fltk = callPackage ./applications/audio/zynaddsubfx {
    guiModule = "fltk";
  };

  zynaddsubfx-ntk = callPackage ./applications/audio/zynaddsubfx {
    guiModule = "ntk";
  };

  zyn-fusion = callPackage ./applications/audio/zynaddsubfx {
    guiModule = "zest";
  };
}
