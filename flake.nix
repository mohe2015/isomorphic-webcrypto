# SPDX-License-Identifier: Unlicense

{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs";
  };

  outputs = { self, nixpkgs }:
    let
      system = "x86_64-linux";
      pkgs = import nixpkgs { inherit system; };
    in
    {
      devShell."x86_64-linux" = pkgs.mkShell {
        buildInputs = [
          pkgs.nodejs-15_x
        ];
      };
    };
}
