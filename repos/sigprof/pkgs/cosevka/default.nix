{ lib, fetchzip }:

let
  version = "6.1.3.1";
in fetchzip rec {
  name = "cosevka-${version}";
  url = "https://github.com/sigprof/cosevka/releases/download/cosevka-${version}/ttc-cosevka-${version}.tar.xz";
  sha256 = "085wlia8j6i0zjsx9amq9caw84kx399bsl0pk8vpg6laq1y1kxhq";
  # NOTE: This hash is **not** identical to the `nix-prefetch-url --unpack`
  # output, because moving the font files to `$out/share/fonts/truetype` also
  # affects the hash.

  postFetch = let
    basename = baseNameOf url;
  in ''
    renamed="$TMPDIR/${basename}"
    mv "$downloadedFile" "$renamed"
    unpackFile "$renamed"
    install -m444 -D -t $out/share/fonts/truetype *.tt[fc]
  '';

  meta = with lib; {
    homepage = "https://github.com/sigprof/cosevka";
    downloadPage = "https://github.com/sigprof/cosevka/releases";
    description = ''
      Customized version of the Iosevka font - slender monospace sans-serif and
      slab-serif typeface inspired by Pragmata Pro, M+ and PF DIN Mono,
      designed to be the ideal font for programming.
    '';
    license = licenses.ofl;
    platforms = platforms.all;
  };
}
