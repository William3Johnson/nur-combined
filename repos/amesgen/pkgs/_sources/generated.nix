# This file was generated by nvfetcher, please do not modify it manually.
{ fetchgit, fetchurl }:
{
  cabal-docspec = {
    pname = "cabal-docspec";
    version = "0.0.0.20211114";
    src = fetchurl {
      url = "https://github.com/phadej/cabal-extras/releases/download/cabal-docspec-0.0.0.20211114/cabal-docspec-0.0.0.20211114.xz";
      sha256 = "12lgpv4g5lcv5b37crimbmd95n9w8fx45xf3dgncg7lckq6p0972";
    };
  };
  cabal-docspec-man = {
    pname = "cabal-docspec-man";
    version = "0.0.0.20211114";
    src = fetchurl {
      url = "https://raw.githubusercontent.com/phadej/cabal-extras/cabal-docspec-0.0.0.20211114/cabal-docspec/cabal-docspec.1";
      sha256 = "14km7fc906ww3hsd12g96z9fxbllh7lzrcsb3r2n08pcy0ql12h9";
    };
  };
  hellsmack = {
    pname = "hellsmack";
    version = "0.1.2.6";
    src = fetchurl {
      url = "https://github.com/amesgen/hellsmack/releases/download/v0.1.2.6/hellsmack-Linux.zip";
      sha256 = "0gs65n5ihcana9ykppzb1jwnb3k00qilyq1pmf51a39zirrj4a87";
    };
  };
  hlint = {
    pname = "hlint";
    version = "3.3.6";
    src = fetchurl {
      url = "https://github.com/ndmitchell/hlint/releases/download/v3.3.6/hlint-3.3.6-x86_64-linux.tar.gz";
      sha256 = "00d1l48a4vc1aja77kkiq8j7fipr94hipdxd8vayzmn43f20dqfr";
    };
  };
  nix-index-database = {
    pname = "nix-index-database";
    version = "2022-03-27";
    src = fetchurl {
      url = "https://github.com/Mic92/nix-index-database/releases/download/2022-03-27/index-x86_64-linux";
      sha256 = "0wsmr2c84a5mci0j95msc6pc1xwfz2df6r15hjbcdfw9zq40w0zb";
    };
  };
  ormolu = {
    pname = "ormolu";
    version = "0.4.0.0";
    src = fetchurl {
      url = "https://github.com/tweag/ormolu/releases/download/0.4.0.0/ormolu-Linux.zip";
      sha256 = "0b3qp1lbsb2idzn7fq9lwqa7i22d58ligsxl4bn14s5hg052dms5";
    };
  };
}
