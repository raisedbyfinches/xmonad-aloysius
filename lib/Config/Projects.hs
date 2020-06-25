-- | Dynamic projects setup for import into C.Options

module Config.Projects where

import           XMonad
import           XMonad.Actions.DynamicProjects

import           App.Alias

-- Projects ---------------------------------------------------------------------
-- Workspace names, using symbols so like an alias
wsGruffalo :: String
wsPlain :: String
wsTerm :: String
wsCode :: String
wsWeb :: String
wsMusic :: String
wsMail :: String
wsScratch :: String

wsGruffalo = "1"
wsTerm = "2"
wsCode = "3"
wsWeb = "4"
wsMusic = "5"
wsMail = "6"
wsPlain = "7"
wsScratch = "8"

wsList :: [String]
wsList =
  [wsGruffalo, wsTerm, wsCode, wsWeb, wsMusic, wsMail, wsPlain, wsScratch]

projects :: [Project]
projects =
  [ Project { projectName      = wsGruffalo
            , projectDirectory = "~/"
            , projectStartHook = Just $ return ()
            }
  , Project { projectName      = wsTerm
            , projectDirectory = "~/"
            , projectStartHook = Just $ spawn tty
            }
  , Project { projectName      = wsCode
            , projectDirectory = "~/"
            , projectStartHook = Just $ spawn code
            }
  , Project { projectName      = wsWeb
            , projectDirectory = "~/"
            , projectStartHook = Just $ spawn browser
            }
  , Project { projectName      = wsMusic
            , projectDirectory = "~/"
            , projectStartHook = Just $ spawn music
            }
  , Project { projectName      = wsMail
            , projectDirectory = "~/"
            , projectStartHook = Just $ spawn mail
            }
  , Project { projectName      = wsPlain
            , projectDirectory = "~/"
            , projectStartHook = Just $ return ()
            }
  , Project { projectName      = wsScratch
            , projectDirectory = "~/"
            , projectStartHook = Just $ return ()
            }
  ]
