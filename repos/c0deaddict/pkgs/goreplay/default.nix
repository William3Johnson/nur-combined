{ lib, buildGoModule, fetchFromGitHub, libpcap }:

buildGoModule rec {
  pname = "goreplay";
  version = "1.1.0";

  src = fetchFromGitHub {
    owner = "buger";
    repo = pname;
    rev = "v${version}";
    sha256 = "07nsrx5hwmk6l8bqp48gqk40i9bxf0g4fbmpqbngx6j5f7lpbk2n";
  };

  buildInputs = [ libpcap ];

  vendorSha256 = "0xfvnpsbnml6y4999h4bkqpf450z5v9w0q22j54wkm0qab72ijci";
  modSha256 = vendorSha256;

  buildFlagsArray = [ "-ldflags=-s -w -X main.version=${version}" ];

  meta = with lib; {
    description = "Open-source tool for capturing and replaying live HTTP traffic";
    homepage = "https://goreplay.org/";
    maintainers = [ maintainers.c0deaddict ];
    license = licenses.gpl3;
  };
}
