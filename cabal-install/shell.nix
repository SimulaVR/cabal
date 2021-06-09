let
  pkgs = import /home/george/Simula/pinned-nixpkgs.nix { };
in
pkgs.haskellPackages.callPackage ./cabal-install.nix { }
