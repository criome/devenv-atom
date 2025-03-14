# Fix for `nix develop`
mod.pkgs.writeTextFile {
  name = "naked-stdenv";
  destination = "/setup";
  text = ''
    : ''${outputs:=out}
  '';
}
