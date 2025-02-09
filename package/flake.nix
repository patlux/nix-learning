{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { nixpkgs, flake-utils, ... }:
    flake-utils.lib.eachDefaultSystem (system: {
      packages.default = derivation {
        inherit system;
        name = "yek";
        builder = "${nixpkgs.legacyPackages."${system}".bash}/bin/bash";
        args = [ "-c" "echo foo > $out" ];
      };
    });
  
}
