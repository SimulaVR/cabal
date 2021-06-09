{ mkDerivation, array, base, base-compat, base-orphans, binary
  , bytestring, containers, deepseq, Diff, directory, filepath
  , integer-logarithms, mtl, optparse-applicative, parsec, pretty
  , process, QuickCheck, stm, tagged, tar, tasty, tasty-golden
  , tasty-hunit, tasty-quickcheck, temporary, text, time
  , transformers, tree-diff, unix, lib
  }:
mkDerivation {
    pname = "Cabal";
    version = "3.2.1.0";
    src = ./.;
    # sha256 = "1xfn9q6jnbp3jc6swn4hapa83f5m66pjz8fqbqmffydagf36fkzy";
    # revision = "1";
    # editedCabalFile = "07brbxkjlf1yqs9bjdwcwq1gx853kh600qnrf6bnya92q1p0fhw7";
    setupHaskellDepends = [ mtl parsec ];
    libraryHaskellDepends = [
      array base binary bytestring containers deepseq directory filepath
      mtl parsec pretty process text time transformers unix
    ];
    testHaskellDepends = [
      array base base-compat base-orphans binary bytestring containers
      deepseq Diff directory filepath integer-logarithms
      optparse-applicative pretty process QuickCheck stm tagged tar tasty
      tasty-golden tasty-hunit tasty-quickcheck temporary text tree-diff
    ];
    doCheck = false;
    description = "A framework for packaging Haskell software";
    license = lib.licenses.bsd3;
    hydraPlatforms = lib.platforms.none;
}