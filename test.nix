# let
#   a = { b = { c = 50; }; };
# in
# rec {
#   h = a.b.c + 5;
#   x.y.z = h + 5;
# }

# let
#   x = 1;
#   y = 2;
#   z = { a = 1; b = 2; };
#   inherit ({ f = 1; g = 1; }) f g;
#   name = "Patrick";
#   # tt = 1;
#   out = "Nix";
# in
# {
#   inherit x y;
#   inherit (z) a;
#   f = f;
#   greets = "Hello ${name}";
#   # bla = "Hey ${tt}";
#   ee = "echo ${out} > $out";
#   cool = ''
#   Nice!
#   Second line
#   '';
#   test = <nixpkgs/lib>;
# }

# functions

# x: x + 1

# let
#   # add = x: x + 1;
#   add = args@{ x, y ? 0, ... }: x + y + args.c;
# in
#   [ (add { x = 1; c = 8; }) ]


let
  x = 8;
  pkgs = import <nixpkgs> {};
  nixpkgs = fetchTarball "https://github.com/NixOS/nixpkgs/archive/06278c77b5d162e62df170fec307e83f1812d94b.tar.gz";
in {
  var = "x = ${builtins.toString x}";
  add = import ./add.nix { a = 1; b = 2; };
  upper = pkgs.lib.strings.toUpper "hehe";
}
