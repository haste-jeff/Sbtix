let
  pkgs = import <nixpkgs> {};
  default = ./default.nix {};

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