# Do not edit this file. It is automatically generated by https://www.oliverdavies.uk/build-configs.
{
  description = "A Nix Flake for sculpin-skeleton";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

  outputs = { nixpkgs, ... }:
    let
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};

      inherit (pkgs) mkShell;
    in {
      devShells.${system}.default =
        mkShell { buildInputs = with pkgs; [ php81 php81Packages.composer ]; };

      formatter.${system} = pkgs.nixfmt;
    };
}
