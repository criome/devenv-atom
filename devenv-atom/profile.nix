pkgs.buildEnv {
  name = "devenv-atom-profile";
  paths = mod.config.packages;
}
