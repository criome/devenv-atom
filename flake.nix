{
  description = "devenv-atom";

  inputs = {
    make-atom.url = "github:criome/make-atom/testing";
    make-atom.inputs.nixpkgs.follows = "nixpkgs";

    system.url = "github:criome/system";

    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

    rust-atom = {
      url = "github:criome/rust-atom/testing";
      inputs.make-atom.follows = "make-atom";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = inputs: inputs.make-atom.mkAtomFlake ./. inputs;
}
