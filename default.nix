{ pkgs ? import sources.nixpkgs { }
, sources ? import ./nix/sources.nix
}:
let inherit (pkgs.callPackage (import "${sources.zmk-nix}/nix/builders.nix") { }) buildSplitKeyboard; in
{
  firmware = buildSplitKeyboard {
    name = "firmware";
    src = pkgs.runCommandNoCC "config" { } ''
      cp -r ${sources.miryoku_zmk}/ $out
      chmod +w $out/config
      cp ${./west.yml} $out/config/west.yml
    '';
    board = "nice_nano_v2";
    shield = "corne_%PART%";
    #shield = "settings_reset";
    zephyrDepsHash = "sha256-zb5RX0HIeaPhC0IvvlWu/qND63lewjN758u09to2Wos=";
  };
}
