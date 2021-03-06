{ cabal, haskeline, mtl, Shellac }:

cabal.mkDerivation (self: {
  pname = "Shellac-haskeline";
  version = "0.2.0.1";
  sha256 = "1xvs2ni83yyf7rx3ikmn2bkx20fyj03d03crqyyfw28mikhgv5br";
  buildDepends = [ haskeline mtl Shellac ];
  patchPhase = ''
    sed -i -e 's|mtl>=1.1 && < 2.1|mtl|' Shellac-haskeline.cabal
  '';
  meta = {
    description = "Haskeline backend module for Shellac";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.ghc.meta.platforms;
    maintainers = [ self.stdenv.lib.maintainers.andres ];
  };
})
