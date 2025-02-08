# { pkgs ? import <nixpkgs> {}, ... }:
let
  # nixpkgs = fetchTarball "https://github.com/NixOS/nixpkgs/tarball/nixos-24.11";
  # nixpkgs = fetchTarball "https://github.com/NixOS/nixpkgs/archive/06278c77b5d162e62df170fec307e83f1812d94b.tar.gz";
  nixpkgs = fetchTarball "https://github.com/NixOS/nixpkgs/tarball/nixpkgs-unstable";
  pkgs = import nixpkgs { config = {}; overlays = []; };
in pkgs.mkShellNoCC {
  packages = with pkgs; [
    cowsay
    lolcat
    neovim
  ];

  GREETING = "HEHE";

  shellHook = ''
    echo $GREETING | cowsay | lolcat;
  '';
}
