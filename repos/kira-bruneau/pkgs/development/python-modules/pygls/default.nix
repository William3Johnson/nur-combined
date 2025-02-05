{ lib
, buildPythonPackage
, fetchFromGitHub
, setuptools-scm
, pydantic
, typeguard
, mock
, pytest-asyncio
, pytestCheckHook
, isPy3k
}:

buildPythonPackage rec {
  pname = "pygls";
  version = "0.11.3";

  src = fetchFromGitHub {
    owner = "openlawlibrary";
    repo = pname;
    rev = "v${version}";
    sha256 = "sha256-/nmDaA67XzrrmfwlBm5syTS4hn25m30Zb3gvOdL+bR8=";
  };

  patches = [
    ./relax-requirements.patch
  ];

  SETUPTOOLS_SCM_PRETEND_VERSION = version;
  nativeBuildInputs = [ setuptools-scm ];

  propagatedBuildInputs = [
    pydantic
    typeguard
  ];

  checkInputs = [
    mock
    pytest-asyncio
    pytestCheckHook
  ];

  # Fixes hanging tests on Darwin
  __darwinAllowLocalNetworking = true;

  pythonImportsCheck = [ "pygls" ];

  meta = with lib; {
    description = "Pythonic generic implementation of the Language Server Protocol";
    homepage = "https://github.com/openlawlibrary/pygls";
    license = licenses.asl20;
    maintainers = with maintainers; [ kira-bruneau ];
    broken = !isPy3k;
  };
}
