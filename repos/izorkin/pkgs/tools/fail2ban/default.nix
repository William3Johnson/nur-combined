{ lib, stdenv, fetchFromGitHub, python3, fetchpatch }:

python3.pkgs.buildPythonApplication rec {
  pname = "fail2ban";
  version = "0.11.2";

  src = fetchFromGitHub {
    owner = "fail2ban";
    repo = "fail2ban";
    rev = version;
    sha256 = "00d9q8m284q2wy6q462nipzszplfbvrs9fhgn0y3imwsc24kv1db";
  };

  pythonPath = with python3.pkgs;
    lib.optionals stdenv.isLinux [
      systemd
    ];

  patches = [
    # remove references to use_2to3, for setuptools>=58
    # has been merged into master, remove next release
    (fetchpatch {
      url = "https://github.com/fail2ban/fail2ban/commit/5ac303df8a171f748330d4c645ccbf1c2c7f3497.patch";
      sha256 = "sha256-aozQJHwPcJTe/D/PLQzBk1YH3OAP6Qm7wO7cai5CVYI=";
    })
  ];

  preConfigure = ''
    # workaround for setuptools 58+
    # https://github.com/fail2ban/fail2ban/issues/3098
    patchShebangs fail2ban-2to3
    ./fail2ban-2to3

    for i in config/action.d/sendmail*.conf; do
      substituteInPlace $i \
        --replace /usr/sbin/sendmail sendmail \
        --replace /usr/bin/whois whois
    done

    substituteInPlace config/filter.d/dovecot.conf \
      --replace dovecot.service dovecot2.service
  '';

  doCheck = false;

  preInstall = ''
    substituteInPlace setup.py --replace /usr/share/doc/ share/doc/

    # see https://github.com/NixOS/nixpkgs/issues/4968
    ${python3.interpreter} setup.py install_data --install-dir=$out --root=$out
  '';

  postPatch = ''
    ${stdenv.shell} ./fail2ban-2to3
  '';

  postInstall =
    let
      sitePackages = "$out/${python3.sitePackages}";
    in
    ''
      # Add custom filters
      cd ${./filter.d} && cp * $out/etc/fail2ban/filter.d

      # see https://github.com/NixOS/nixpkgs/issues/4968
      rm -r "${sitePackages}/etc"
    '' + lib.optionalString stdenv.isLinux ''
      # see https://github.com/NixOS/nixpkgs/issues/4968
      rm -r "${sitePackages}/usr"
    '';

  meta = with lib; {
    homepage = "https://www.fail2ban.org/";
    description = "A program that scans log files for repeated failing login attempts and bans IP addresses";
    license = licenses.gpl2Plus;
    maintainers = with maintainers; [ eelco lovek323 fpletz ];
    platforms = platforms.unix;
  };
}
