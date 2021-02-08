{ stdenvNoCC, lib, fetchgit }:
stdenvNoCC.mkDerivation rec {
  pname = "bollux";
  version = "0.4.3";

  src = fetchgit {
    url = "https://git.sr.ht/~acdw/bollux";
    rev = version;
    sha256 = "03zwq7h1cdv63i6803a5c7mxbhi8q5j164wmmypcxmh2la1g35h6";
  };

  outputs = [ "out" "man" ];

  makeFlags = [ "PREFIX=${placeholder "out"}" ];

  meta = with lib; {
    description = "bash Gemini client";
    homepage = "https://sr.ht/~acdw/bollux/";
    license = licenses.mit;
  };
}
