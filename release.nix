let
  pkgs = import <nixpkgs> {};
  default = import ./default.nix {};

  jobs = rec {

    build =
      pkgs.releaseTools.nixBuild {
        name = "sbtix";
        src = <githubSource>;
        buildInputs = [ default ];
      };
  };
in
  jobs