# The shellHook is loaded directly by `nix develop`. But nix-shell
# requires the `stdenv` call.
''
  # Remove all the unnecessary noise that is set by the build env
  unset NIX_BUILD_TOP NIX_BUILD_CORES NIX_STORE
  unset TEMP TEMPDIR TMP TMPDIR
  # $name variable is preserved to keep it compatible with pure shell https://github.com/sindresorhus/pure/blob/47c0c881f0e7cfdb5eaccd335f52ad17b897c060/pure.zsh#L235
  unset builder out shellHook stdenv system
  # Flakes stuff
  unset dontAddDisableDepTrack outputs
''
