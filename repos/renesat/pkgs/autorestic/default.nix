{ lib, fetchFromGitHub, installShellFiles, buildGoModule }:

buildGoModule rec {
  pname = "autorestic";
  version = "1.5.0";

  src = fetchFromGitHub {
    owner = "cupcakearmy";
    repo = pname;
    rev = "v${version}";
    sha256 = "sha256-6/t7k0PNcRuCsIAV1iyDxDqsgm2fpBj+26MfvebNEBM=";
  };

  vendorSha256 = "sha256-eKsPdmPJXiCwvb2A28tNxF4xStry3iA6aLb+XYFJYSg=";

  nativeBuildInputs = [ installShellFiles ];

  postInstall = ''
    installShellCompletion --cmd autorestic \
         --bash <($out/bin/autorestic completion bash) \
         --fish <($out/bin/autorestic completion fish) \
         --zsh <($out/bin/autorestic completion zsh)
  '';

  meta = with lib; {
    description = "High level CLI utility for restic";
    homepage = "https://github.com/cupcakearmy/autorestic";
    license = licenses.asl20;
    platforms = platforms.linux ++ platforms.darwin;
  };
}
