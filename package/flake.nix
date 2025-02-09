{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };

  outputs = { nixpkgs, ... }: let 
    system = "aarch64-darwin";
  in {
    packages."${system}".default = derivation {
      inherit system;
      name = "yek";
      builder = "${nixpkgs.legacyPackages."${system}".bash}/bin/bash";
      args = [ "-c" "echo foo > $out" ];
    };
  };
}
