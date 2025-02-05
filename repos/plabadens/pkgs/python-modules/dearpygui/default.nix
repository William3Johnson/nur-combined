{ lib
, buildPythonPackage
, fetchFromGitHub
, cmake
, glfw3
, libX11
}:

let
  # DearPyGui is not synced with last stable Imgui's version.
  imgui = fetchFromGitHub {
    owner = "ocornut";
    repo = "imgui";
    rev = "1b435ae3e07ca813eb3ef40aaabe7053f5570fae";
    hash = "sha256-4UqRKgwaERUz2GQdEZbGmWOj8tAaP+thSlaOBRt06Ho=";
  };
in
buildPythonPackage rec {
  pname = "dearpygui";
  version = "1.3";

  src = fetchFromGitHub {
    owner = "hoffstadt";
    repo = pname;
    rev = "v${version}";
    hash = "sha256-t+xMpZz2O8H+vWkakl8d/5Yg8y4qBjPykY+E6lQ1fg8=";
  };

  nativeBuildInputs = [ cmake ];

  buildInputs = [ glfw3 libX11 ];

  prePatch = ''
    sed -i "/add_subdirectory(\"Dependencies\")/d" CMakeLists.txt
    cp -r ${imgui}/* Dependencies/imgui
  '';

  # CMake needs to be run by setuptools rather than by its hook
  dontUseCmakeConfigure = true;

  meta = with lib; {
    description = "Cross-platform graphical user interface toolkit (GUI) for Python";
    homepage = "https://github.com/hoffstadt/DearPyGui";
    license = licenses.mit;
    maintainers = with maintainers; [ plabadens ];
  };
}
