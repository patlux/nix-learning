run:
	nix-instantiate --strict --eval test.nix

add:
	nix-instantiate --strict --eval add.nix --arg a 1 --arg b 2

