{ pkgs ? import (fetchTarball "https://github.com/NixOS/nixpkgs/archive/035f8c0853c2977b24ffc4d0a42c74f00b182cd8.tar.gz") {}}:
pkgs.mkShell {
  buildInputs = with pkgs;[
    nodejs_22
    pnpm_10
  ];
}
