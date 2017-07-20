let
  pkgs = import <nixpkgs> {};

  jobs = rec {

    build =
      { system ? builtins.currentSystem }: 

      let pkgs = import <nixpkgs> { inherit system; }; in
      pkgs.releaseTools.nixBuild {
        name = "sbtix";
        src = <githubSource>;
        buildInputs = [<nixpkgs> ./default.nix];
      };
  };
in
  jobs