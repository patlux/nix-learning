{
  inputs = {
    nixpkgs = import <nixpkgs> {};
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { nixpkgs, flake-utils, ... }:
    flake-utils.lib.eachDefaultSystem (system:
    let 
      pkgs = nixpkgs.legacyPackages.${system};
    in {
      packages.default = nixpkgs.stdenv.mkDerivation rec {

      };
    });
}
