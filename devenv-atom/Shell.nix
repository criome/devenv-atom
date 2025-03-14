derivation {
  name = "devenv-atom-shell";
  inherit system;

  builder = mod.config.shell or mod.defaultShell;

  args = [
    "-ec"
    "${mod.pkgs.coreutils}/bin/ln -s ${mod.profile} $out; exit 0"
  ];

  stdenv = mod.nakedStdenv;
}
