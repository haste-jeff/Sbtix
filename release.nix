let
  pkgs = import <nixpkgs> {};
  
  jobs = rec {

    build =
      pkgs.releaseTools.nixBuild {
        name = "sbtix";
        src = <githubSource>;
        buildInputs = [ ./default.nix ];
      };
  };
in
  jobs