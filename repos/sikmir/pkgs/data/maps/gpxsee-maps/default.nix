{ lib
, stdenvNoCC
, fetchFromGitHub
, hereApiKey ? ""
, mapboxApiKey ? ""
, maptilerApiKey ? ""
, mmlApiKey ? ""
, openrouteserviceApiKey ? ""
, thunderforestApiKey ? ""
, mapsList ? [
    "World/Asia/nakarte-*.xml"
    "World/Europe/FI/*.xml"
    "World/Europe/RU/*.xml"
    "World/CyclOSM.xml"
    "World/Inkatlas-Outdoor.xml"
    "World/MapTiler.xml"
    "World/Mapbox.xml"
    "World/OPNVKarte.xml"
    "World/OpenStreetMap.xml"
    "World/heidelberg.xml"
    "World/here-*.xml"
    "World/marshruty.ru.xml"
  ]
}:

stdenvNoCC.mkDerivation {
  pname = "gpxsee-maps";
  version = "2022-01-20";

  src = fetchFromGitHub {
    owner = "tumic0";
    repo = "GPXSee-maps";
    rev = "82f476d1ae6851f936a882005f36b671149c35a3";
    hash = "sha256-tWIcJMNWtXpvZg5MZW0n4GbI2l0FShLx+R3DmgBuXMQ=";
  };

  postPatch = let
    insertApiKey = map: key: ''
      substitute ${map}.{tpl,xml} \
        --replace "insert-your-apikey-here" "${key}"
    '';
  in
  ''
    ${insertApiKey "World/Europe/FI/Ilmakuva" mmlApiKey}
    ${insertApiKey "World/Europe/FI/Maastokartta" mmlApiKey}
    ${insertApiKey "World/Europe/FI/Selkokartta" mmlApiKey}
    ${insertApiKey "World/Europe/FI/Taustakartta" mmlApiKey}
    ${insertApiKey "World/here-base" hereApiKey}
    ${insertApiKey "World/here-vector" hereApiKey}
    ${insertApiKey "World/heidelberg" openrouteserviceApiKey}
    ${insertApiKey "World/MapTiler" maptilerApiKey}
    ${insertApiKey "World/Mapbox" mapboxApiKey}
    ${insertApiKey "World/Thunderforest-Landscape" thunderforestApiKey}
    ${insertApiKey "World/Thunderforest-Neighbourhood" thunderforestApiKey}
    ${insertApiKey "World/Thunderforest-OpenCycleMap" thunderforestApiKey}
    ${insertApiKey "World/Thunderforest-Outdoors" thunderforestApiKey}
    ${insertApiKey "World/Thunderforest-Transport" thunderforestApiKey}
  '';

  installPhase = ''
    install -dm755 $out
    cp -r ${toString mapsList} $out
  '';

  meta = with lib; {
    description = "GPXSee maps";
    homepage = "https://tumic0.github.io/GPXSee-maps/";
    license = licenses.unlicense;
    maintainers = [ maintainers.sikmir ];
    platforms = platforms.all;
  };
}
