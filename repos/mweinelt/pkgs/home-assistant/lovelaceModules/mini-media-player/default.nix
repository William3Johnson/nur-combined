{ lib, stdenv, fetchurl }:

let
  pname = "mini-media-player";
  version = "1.16.2";
in
stdenv.mkDerivation {
  inherit pname version;

  src = fetchurl {
    url = "https://github.com/kalkih/${pname}/releases/download/v${version}/mini-media-player-bundle.js";
    hash = "sha256-WjxoioDgRcOFd1oZBeOKa5WBjbGxJkUThskZjH2FwB4=";
  };

  dontUnpack = true;
  dontBuild = true;

  installPhase = ''
    mkdir $out
    cp $src $out/mini-media-player-bundle.js
  '';

  meta = with lib; {
    description = "Minimalistic media card for Home Assistant Lovelace UI";
    homepage = "https://github.com/kalkih/mini-media-player";
    maintainers = with maintainers; [ hexa ];
    license = licenses.mit;
  };
}

