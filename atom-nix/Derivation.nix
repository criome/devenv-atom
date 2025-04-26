let
  baseArguments = {
    name = "devenv-atom-shell";
    inherit system;

    builder = mod.shell.default;

    args = [
      "-ec"
      "${pkgs.coreutils}/bin/ln -s ${mod.profile} $out; exit 0"
    ];

    PATH = "${mod.profile}/bin:$PATH";

    stdenv = mod.nakedStdenv;

    inherit (mod) shellHook;
  };

in
derivation (mod.config.environment // baseArguments)
