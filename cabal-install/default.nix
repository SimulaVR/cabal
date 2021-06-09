let
  pkgs = (import ../../../pinned-nixpkgs.nix { });
  Cabal = pkgs.haskellPackages.callPackage ../Cabal/Cabal.nix { };
  cabal-install = pkgs.haskellPackages.callPackage ./cabal-install.nix { };
in
  cabal-install