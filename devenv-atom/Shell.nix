derivation {
  name = "devenv-atom-shell";
  inherit system;

  builder = mod.config.shell or mod.defaultShell;

  args = [
    "-ec"
    "${pkgs.coreutils}/bin/ln -s ${mod.profile} $out; exit 0"
  ];

  PATH = "${mod.profile}/bin:$PATH";

  stdenv = mod.nakedStdenv;
}
