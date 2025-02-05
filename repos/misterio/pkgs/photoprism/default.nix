# From https://github.com/newam/nixpkgs
{ lib
, pkgs
, stdenv
, buildGoModule
, fetchFromGitHub
, fetchzip
, libtensorflow-bin
, coreutils
, fetchurl
, darktable
, rawtherapee
, ffmpeg
, libheif
, exiftool
, nodejs
, system
}:

let
  version = "unstable-2022-03-02";
  pname = "photoprism";

  src = fetchFromGitHub {
    owner = pname;
    repo = pname;
    rev = "220302-0059f429";
    sha256 = "sha256-hEA2E5ty9j9BH7DviYh5meao0ot0alPgMoJcplJDRc4=";
  };

  fetchModel = { name, sha256 }:
    fetchzip {
      inherit sha256;
      url = "https://dl.photoprism.org/tensorflow/${name}.zip";
      stripRoot = false;
    };

  facenet = fetchModel {
    name = "facenet";
    sha256 = "sha256-aS5kkNhxOLSLTH/ipxg7NAa1w9X8iiG78jmloR1hpRo=";
  };

  nasnet = fetchModel {
    name = "nasnet";
    sha256 = "sha256-bF25jPmZLyeSWy/CGXZE/VE2UupEG2q9Jmr0+1rUYWE=";
  };

  nsfw = fetchModel {
    name = "nsfw";
    sha256 = "sha256-zy/HcmgaHOY7FfJUY6I/yjjsMPHR2Ote9ppwqemBlfg=";
  };

  backend = buildGoModule rec {
    inherit pname version src;

    buildInputs = [
      coreutils
      (pkgs.callPackage ./tensorflow.nix { })
    ];

    postPatch = ''
      substituteInPlace internal/commands/passwd.go --replace '/bin/stty' "${coreutils}/bin/stty"
    '';

    vendorSha256 = "sha256-GaMV1SFDTCgZMZz0lYAKqqqX5zW+pU39vnwtlz2UDbQ=";

    subPackages = [ "cmd/photoprism" ];

    # https://github.com/mattn/go-sqlite3/issues/822
    CGO_CFLAGS = "-Wno-return-local-addr";

    # https://github.com/tensorflow/tensorflow/issues/43847
    CGO_LDFLAGS = "-fuse-ld=gold";
  };

  inherit (import ./node-composition.nix {
    inherit pkgs nodejs;
    inherit (stdenv.hostPlatform) system;
  }) nodeDependencies;

  frontend = stdenv.mkDerivation {
    name = "photoprism-frontend";
    inherit src;
    buildInputs = [ nodejs ];

    # sourceRoot = "source/frontend";

    buildPhase = ''
      runHook preBuild

      pushd frontend
      ln -s ${nodeDependencies}/lib/node_modules ./node_modules
      export PATH="${nodeDependencies}/bin:$PATH"
      NODE_ENV=production npm run build
      popd

      runHook postBuild
    '';

    installPhase = ''
      runHook preInstall

      mkdir $out
      cp -r assets $out/

      runHook postInstall
    '';
  };

in
stdenv.mkDerivation {
  inherit pname version;

  buildInputs = [
    darktable
    rawtherapee
    ffmpeg
    libheif
    exiftool
  ];

  phases = [ "installPhase" ];

  installPhase = ''
    runHook preInstall

    mkdir -p $out/{bin,assets}
    # install backend
    cp ${backend}/bin/photoprism $out/bin/photoprism
    # install frontend
    cp -r ${frontend}/assets $out/
    # install tensorflow models
    cp -r ${nasnet}/nasnet $out/assets
    cp -r ${nsfw}/nsfw $out/assets
    cp -r ${facenet}/facenet $out/assets

    runHook postInstall
  '';

  meta = with lib; {
    homepage = "https://photoprism.app";
    description = "Personal Photo Management powered by Go and Google TensorFlow";
    platforms = [ "x86_64-linux" "aarch64-linux" ];
    license = licenses.agpl3;
    # maintainers = with maintainers; [ newam ];
  };
}
