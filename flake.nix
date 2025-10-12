{
  description = "mewtris";
  inputs = {
    flake-compat = {
      url = "https://flakehub.com/f/edolstra/flake-compat/1.tar.gz";
      flake = false;
    };
    nix-std = {
      url = "github:chessai/nix-std";
    };
  };
  outputs = { nix-std, ... }@inputs: {
    nixosModules = rec {
      mewtris = import ./nixosModule.nix { std = nix-std.lib; };
      default = mewtris;
    };
  };
}
