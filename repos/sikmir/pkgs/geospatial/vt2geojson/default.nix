{ lib, buildGoModule, fetchFromGitHub }:

buildGoModule rec {
  pname = "vt2geojson";
  version = "0.1.6";

  src = fetchFromGitHub {
    owner = "wangyoucao577";
    repo = pname;
    rev = "v${version}";
    hash = "sha256-2wBMWrraWFDLHc/s/RMW4a4moftwTFeBj7FfaCJgdU0=";
  };

  vendorSha256 = "sha256-FnLxhhytgNC4OIvh9pUM+cVDdNfqVOocjmkzFDU1fmA=";

  meta = with lib; {
    description = "Command line tool to dump Mapbox Vector Tiles to GeoJSON";
    inherit (src.meta) homepage;
    license = licenses.mit;
    maintainers = [ maintainers.sikmir ];
    platforms = platforms.unix;
  };
}
