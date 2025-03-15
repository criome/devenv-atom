{
  description = "devenv-atom";

  inputs = {
    atom.url = "github:LiGoldragon/atom/atomicFlake-v1";
    system.url = "github:criome/system";

    nixpkgs-lib.url = "github:nix-community/nixpkgs.lib";
    nixpkgs-lib.flake = false;

    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

    rust-atom.url = "github:criome/rust-atom";
    rust-atom.flake = false;
  };

  outputs = inputs: inputs.atom.mkAtomicFlake inputs (./. + "/devenv-atom@.toml");
}
