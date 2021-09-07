# This file was generated by nvfetcher, please do not modify it manually.
{ fetchgit, fetchurl }:
{
  clash-for-windows = {
    pname = "clash-for-windows";
    version = "0.17.3";
    src = fetchurl {
      sha256 = "1g6y6cwymfscqarjp4g65lwg8sai5kvp6w5xkwg7nj72qwjcxrhj";
      url = "https://github.com/Fndroid/clash_for_windows_pkg/releases/download/0.17.3/Clash.for.Windows-0.17.3-x64-linux.tar.gz";
    };

  };
  clash-for-windows-icon = {
    pname = "clash-for-windows-icon";
    version = "0";
    src = fetchurl {
      sha256 = "1zd453mwrlc9kafagyvmj9i8vd5a4akp9srbsy9mxa48x77ckqp2";
      url = "https://docs.cfw.lbyczf.com/favicon.ico";
    };

  };
  clash-premium-aarch64-linux = {
    pname = "clash-premium-aarch64-linux";
    version = "2021.09.07";
    src = fetchurl {
      sha256 = "1z9c85kncgj1f4r2ljlc9939lxf0i922g64sh0maqml97q5lb49s";
      url = "https://github.com/Dreamacro/clash/releases/download/premium/clash-linux-armv8-2021.09.07.gz";
    };

  };
  clash-premium-i686-linux = {
    pname = "clash-premium-i686-linux";
    version = "2021.09.07";
    src = fetchurl {
      sha256 = "0fx8si14pnvakg7l9rfaywag2wkj623i5nkqpl7jnmwvpxwin95y";
      url = "https://github.com/Dreamacro/clash/releases/download/premium/clash-linux-386-2021.09.07.gz";
    };

  };
  clash-premium-x86_64-darwin = {
    pname = "clash-premium-x86_64-darwin";
    version = "2021.09.07";
    src = fetchurl {
      sha256 = "05ibl5fw2rf5d3aq7rcnm0pwin0k0m8vccf96ja5v82bcv8wj16k";
      url = "https://github.com/Dreamacro/clash/releases/download/premium/clash-darwin-amd64-2021.09.07.gz";
    };

  };
  clash-premium-x86_64-linux = {
    pname = "clash-premium-x86_64-linux";
    version = "2021.09.07";
    src = fetchurl {
      sha256 = "1q1djdxg56ia4q6d3x9b9zw9qpw7mzc5195n51g2czzylnw7799b";
      url = "https://github.com/Dreamacro/clash/releases/download/premium/clash-linux-amd64-2021.09.07.gz";
    };

  };
  dpt-rp1-py = {
    pname = "dpt-rp1-py";
    version = "v0.1.13";
    src = fetchgit {
      url = "https://github.com/janten/dpt-rp1-py";
      rev = "v0.1.13";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sha256 = "1jgkfn5kfnx98xs0dmym1h9mv1mrzlglk7x0fzs2jlc56c18w9dk";
    };

  };
  godns = {
    pname = "godns";
    version = "v2.5";
    src = fetchgit {
      url = "https://github.com/TimothyYe/godns";
      rev = "v2.5";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sha256 = "11735nard9djfc4gbxnp2sc60aw9f6jkm2h9yvhm754abnchbbc9";
    };

  };
  icalingua = {
    pname = "icalingua";
    version = "v2.2.1";
    src = fetchurl {
      sha256 = "1jfj8wix09nmazgkd4q5an01iwg637cdysi8khp4370a846aqs1g";
      url = "https://github.com/Clansty/Icalingua/releases/download/v2.2.1/app-x86_64.asar";
    };

  };
  icalinguaIcon = {
    pname = "icalinguaIcon";
    version = "0";
    src = fetchurl {
      sha256 = "0f0fgnhv80fwwfwlram5n078z7svnlqrh68d7gc4wl0qiig5ij44";
      url = "https://aur.archlinux.org/cgit/aur.git/plain/512x512.png?h=icalingua";
    };

  };
  trojan = {
    pname = "trojan";
    version = "v1.16.0";
    src = fetchgit {
      url = "https://github.com/trojan-gfw/trojan";
      rev = "v1.16.0";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sha256 = "0v24hy46vmbx4yjnf49w2ib5l893b19imykk86zbyj1sfh8ijakw";
    };

  };
  vlmcsd = {
    pname = "vlmcsd";
    version = "svn1113";
    src = fetchgit {
      url = "https://github.com/Wind4/vlmcsd";
      rev = "svn1113";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sha256 = "19qfw4l4b5vi03vmv9g5i7j32nifvz8sfada04mxqkrqdqxarb1q";
    };

  };
  wemeet = {
    pname = "wemeet";
    version = "2.8.0.0";
    src = fetchurl {
      sha256 = "1gzw9srch9il7cx4x8hribiq3akgrv6590qk9xlrc0c709mm1cx6";
      url = "https://updatecdn.meeting.qq.com/ad878a99-76c4-4058-ae83-22ee948cce98/TencentMeeting_0300000000_2.8.0.0_x86_64.publish.deb";
    };

  };
}
