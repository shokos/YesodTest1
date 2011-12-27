module Paths_YesodTest1 (
    version,
    getBinDir, getLibDir, getDataDir, getLibexecDir,
    getDataFileName
  ) where

import Data.Version (Version(..))
import System.Environment (getEnv)

version :: Version
version = Version {versionBranch = [0,0,0], versionTags = []}

bindir, libdir, datadir, libexecdir :: FilePath

bindir     = "/Users/sasakishouko/Library/Haskell/ghc-7.0.4/lib/YesodTest1-0.0.0/bin"
libdir     = "/Users/sasakishouko/Library/Haskell/ghc-7.0.4/lib/YesodTest1-0.0.0/lib"
datadir    = "/Users/sasakishouko/Library/Haskell/ghc-7.0.4/lib/YesodTest1-0.0.0/share"
libexecdir = "/Users/sasakishouko/Library/Haskell/ghc-7.0.4/lib/YesodTest1-0.0.0/libexec"

getBinDir, getLibDir, getDataDir, getLibexecDir :: IO FilePath
getBinDir = catch (getEnv "YesodTest1_bindir") (\_ -> return bindir)
getLibDir = catch (getEnv "YesodTest1_libdir") (\_ -> return libdir)
getDataDir = catch (getEnv "YesodTest1_datadir") (\_ -> return datadir)
getLibexecDir = catch (getEnv "YesodTest1_libexecdir") (\_ -> return libexecdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "/" ++ name)
