{ lib, stdenv, fetchFromGitHub }:

let
  name = "uwu";
  version = "0.1";
in stdenv.mkDerivation {
  inherit name version;
  src = fetchFromGitHub {
    owner = "98WuG";
    repo = name;
    rev = "v${version}";
    sha256 = "1n9laj9976lcw96baavhz9zmsaidv2z6qmb13g3wdwm028bq3wzr";
  };
  buildPhase = "make";
  installPhase = ''
    mkdir -p $out/bin
    install -Dm755 uwu $out/bin
  '';

  meta = {
    description = "Obfuscated C uwu";
    # Based on the PKGBUILD file included in the project's repo
    license = lib.licenses.gpl2Plus;
  };
}
