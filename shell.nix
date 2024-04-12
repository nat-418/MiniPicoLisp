{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  name = "MiniPicoLisp";
  packages = [
    pkgs.gcc
    pkgs.gnumake
  ];
}
