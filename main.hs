import Yesod.Default.Config (fromArgs)
import Yesod.Default.Main   (defaultMain)
import Application          (withYesodTest1)
import Prelude              (IO)

main :: IO ()
main = defaultMain fromArgs withYesodTest1