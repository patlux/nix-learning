{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-24.11";
    flake-utils.url = "github:numtide/flake-utils";
  };

  # outputs = { nixpkgs, ... }: let
  #   system = "aarch64-darwin";
  #   pkgs = nixpkgs.legacyPackages.${system};
  # in with pkgs; {
  #   packages."${system}".default = stdenv.mkDerivation {
  #     name = "zig-app";
  #     version = "0.0.0";
  #     src = ./.;
  #     # Otherwis we get "error: ReadOnlyFileSystem" 
  #     ZIG_GLOBAL_CACHE_DIR = "$(mktemp -d)";
  #     buildPhase = "zig build -p $out";
  #     nativeBuildInputs = [ zig ];
  #   };
  # };

  outputs = { nixpkgs, flake-utils, ... }:
    flake-utils.lib.eachDefaultSystem (system:
    let 
      pkgs = nixpkgs.legacyPackages.${system};
    in with pkgs; {
      packages.default = stdenv.mkDerivation {
        name = "zig-app";
        version = "0.0.0";

        src = ./.;

        # Otherwis we get "error: ReadOnlyFileSystem"
        ZIG_GLOBAL_CACHE_DIR = "$(mktemp -d)";

        buildPhase = "zig build -p $out";
        nativeBuildInputs = [ zig ];
      };
    });
}
