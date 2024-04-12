{ pkgs ? import <nixpkgs> {} }:

{
  minipicolisp = pkgs.callPackage ./package.nix {};
}
