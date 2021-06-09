{ mkDerivation, array, async, base, base16-bytestring, binary
  , bytestring, containers, cryptohash-sha256, deepseq
  , directory, echo, edit-distance, filepath, hackage-security
  , hashable, HTTP, lukko, mtl, network-uri, parsec, pretty, process
  , random, regex-base, regex-posix, resolv, stm, tar, text, time
  , transformers, unix, zlib, lib, Cabal
  }:
mkDerivation {
  pname = "cabal-install";
  version = "3.2.1.0";
  src = ./.;
  # sha256 = "15rylx5pa03jdiwcg1x7zvs6aq3g6phwmi1hz26cl080nczyz00r";
  isLibrary = false;
  isExecutable = true;
  executableHaskellDepends = [
    array async base base16-bytestring binary bytestring Cabal
    containers cryptohash-sha256 deepseq directory echo edit-distance
    filepath hackage-security hashable HTTP lukko mtl network-uri
    parsec pretty process random regex-base regex-posix resolv stm tar
    text time transformers unix zlib
  ];
  doCheck = false;
  postInstall = ''
    mkdir -p $out/share/bash-completion
    mv bash-completion $out/share/bash-completion/completions
  '';
  description = "The command-line interface for Cabal and Hackage";
  license = lib.licenses.bsd3;
  maintainers = with lib.maintainers; [ peti ];
}
