{ stdenv
, lib
, fetchFromGitHub
, cmake
  # Check Inputs
, python
}:

stdenv.mkDerivation rec {
  pname = "muparserx";
  version = "4.0.11";

  src = fetchFromGitHub {
    owner = "beltoforion";
    repo = "muparserx";
    rev = "v${version}";
    sha256 = "sha256-BWzHlz1mQYsvWa53EtO05Rb4rRHJBSRguJTHLtgqpPw=";
  };

  cmakeFlags = [
    "-DCMAKE_BUILD_TYPE=Release"
  ];

  nativeBuildInputs = [ cmake ];

  doCheck = true;
  checkPhase = ''
    echo "***Muparserx self-test***"
    echo "quit" | ./example > test_result.log
    cat test_result.log
    if grep -Fqi "failed" test_result.log; then
      echo ">=1 muparserx tests failed"
      exit 1
    else
      echo -e "\nmuparserx tests succeeded"
    fi
  '';

  meta = with lib; {
    description = "A C++ Library for Parsing Expressions with Strings, Complex Numbers, Vectors, Matrices and more.";
    homepage = "https://beltoforion.de/en/muparserx/";
    license = licenses.bsd2;
    maintainers = with maintainers; [ drewrisinger ];
  };
}
