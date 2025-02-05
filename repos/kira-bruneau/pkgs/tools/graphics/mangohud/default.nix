{ lib
, stdenv
, fetchFromGitHub
, fetchurl
, substituteAll
, coreutils
, curl
, gawk
, glxinfo
, gnugrep
, gnused
, xdg-utils
, dbus
, hwdata
, libX11
, mangohud32
, vulkan-headers
, glslang
, makeWrapper
, Mako
, meson
, ninja
, pkg-config
, unzip
, vulkan-loader
, libXNVCtrl
, wayland
, addOpenGLRunpath
}:

let
  # Derived from subprojects/imgui.wrap
  imgui = rec {
    version = "1.81";
    src = fetchFromGitHub {
      owner = "ocornut";
      repo = "imgui";
      rev = "v${version}";
      sha256 = "sha256-rRkayXk3xz758v6vlMSaUu5fui6NR8Md3njhDB0gJ18=";
    };
    patch = fetchurl {
      url = "https://wrapdb.mesonbuild.com/v2/imgui_${version}-1/get_patch";
      sha256 = "sha256-bQC0QmkLalxdj4mDEdqvvOFtNwz2T1MpTDuMXGYeQ18=";
    };
  };
in stdenv.mkDerivation rec {
  pname = "mangohud";
  version = "0.6.5";

  src = fetchFromGitHub {
    owner = "flightlessmango";
    repo = "MangoHud";
    rev = "v${version}";
    fetchSubmodules = true;
    sha256 = "sha256-RRtti0VnB6SXrpFYaEqANvpgvP/Dkvc+x/I40AXaspU=";
  };

  outputs = [ "out" "doc" "man" ];

  # Unpack subproject sources
  postUnpack = ''(
    cd "$sourceRoot/subprojects"
    cp -R --no-preserve=mode,ownership ${imgui.src} imgui-${imgui.version}
    unzip ${imgui.patch}
  )'';

  patches = [
    # Hard code dependencies. Can't use makeWrapper since the Vulkan
    # layer can be used without the mangohud executable by setting MANGOHUD=1.
    (substituteAll {
      src = ./hardcode-dependencies.patch;

      path = lib.makeBinPath [
        coreutils
        curl
        gawk
        glxinfo
        gnugrep
        gnused
        xdg-utils
      ];

      libdbus = dbus.lib;
      inherit hwdata libX11;
    })
  ] ++ lib.optional (stdenv.hostPlatform.system == "x86_64-linux") [
    # Support 32bit OpenGL applications by appending the mangohud32
    # lib path to LD_LIBRARY_PATH.
    #
    # This workaround is necessary since on Nix's build of ld.so, $LIB
    # always expands to lib even when running an 32bit application.
    #
    # See https://github.com/NixOS/nixpkgs/issues/101597.
    (substituteAll {
      src = ./opengl32-nix-workaround.patch;
      inherit mangohud32;
    })
  ];

  mesonFlags = [
    "-Duse_system_vulkan=enabled"
    "-Dvulkan_datadir=${vulkan-headers}/share"
    "-Dwith_wayland=enabled"
  ];

  nativeBuildInputs = [
    glslang
    makeWrapper
    Mako
    meson
    ninja
    pkg-config
    unzip
    vulkan-loader
  ];

  buildInputs = [
    dbus
    libX11
    libXNVCtrl
    wayland
  ];

  # Support 32bit Vulkan applications by linking in 32bit Vulkan layer
  # This is needed for the same reason the 32bit OpenGL workaround is needed.
  postInstall = lib.optionalString (stdenv.hostPlatform.system == "x86_64-linux") ''
    ln -s ${mangohud32}/share/vulkan/implicit_layer.d/MangoHud.json \
      "$out/share/vulkan/implicit_layer.d/MangoHud.x86.json"
  '';

  # Support Nvidia cards by adding OpenGL path and support overlaying
  # Vulkan applications without requiring MangoHud to be installed
  postFixup = ''
    wrapProgram "$out/bin/mangohud" \
      --prefix LD_LIBRARY_PATH : ${lib.makeLibraryPath [ addOpenGLRunpath.driverLink ]} \
      --prefix XDG_DATA_DIRS : "$out/share"
  '';

  meta = with lib; {
    description = "A Vulkan and OpenGL overlay for monitoring FPS, temperatures, CPU/GPU load and more";
    homepage = "https://github.com/flightlessmango/MangoHud";
    platforms = platforms.linux;
    license = licenses.mit;
    maintainers = with maintainers; [ kira-bruneau zeratax ];
  };
}
