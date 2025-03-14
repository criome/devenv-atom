{
  description = "devenv-atom";

  inputs = {
    atom.url = "github:LiGoldragon/atom/atomicFlake-v1";
    system.url = "github:criome/system";

    rust-atom.url = "github:criome/rust-atom";
    rust-atom.flake = false;

    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

    nixpkgs-atom.url = "github:criome/nixpkgs-atom";
    nixpkgs-atom.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = inputs: inputs.atom.mkAtomicFlake inputs (./. + "/devenv-atom@.toml");
}
