let
  default = pkgs.bashInteractive + "/bin/bash";
in
{
  inherit default;
  interactive = mod.config.shell or default;
}
