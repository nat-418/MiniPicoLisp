{ lib, stdenv, gcc, gnumake }:

let
  crazyStr = (lib.strings.escapeShellArg "\${0%/*}");
in

stdenv.mkDerivation {
  pname = "MiniPicoLisp";
  version = "2024-04-12";
  src = lib.sources.cleanSource ./.;

  nativeBuildInputs = [ gcc gnumake ];

  buildPhase = ''
    rm *.nix
    cd src
    make
    cd ..
  '';

  installPhase = ''
    mkdir -p "$out"
    cp -r . "$out"
    ln -s "$out/mpil" "$out/bin/mpil"
    substituteInPlace $out/bin/mpil --replace ${crazyStr} $out
  '';

  meta = {
    description = ''An embeddable, "pure" PicoLisp interpreter.'';
    homepage = "https://www.picolisp.com/wiki/?embedded";
  };
}

