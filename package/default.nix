{ pkgs ? import <nixpkgs> {} }:
{
  yek = pkgs.callPackage ./yek.nix {};
}
