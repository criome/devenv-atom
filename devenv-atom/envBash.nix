mod.pkgs.writeText "devenv.bash" ''
  export PATH=${mod.profile}/bin:${bashBin}:$PATH
''
