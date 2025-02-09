# nix-learning

My first steps with nix

```sh
make
```

## Packaging existing software

https://nix.dev/tutorials/packaging-existing-software

I managed to package a rust-based tool named [yek](https://github.com/bodo-run/yek/tree/main). To create the package and execute it:

```sh
# Executes "nix-build" (old way)
make yek
./package/result/bin/yek


# To build using the new Nix commands:
cd packages
nix build
```
