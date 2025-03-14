{
  inherit (get.nixpkgs-atom) pkgs lib;
  config = get.config.devenv;
  defaultShell = mod.pkgs.bashInteractive + "/bin/bash";
}
