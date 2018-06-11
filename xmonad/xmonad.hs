module Main where

import Control.Monad
import Control.Monad.IO.Class
import Data.Monoid
import XMonad

import XMonad.Hooks.DynamicHooks
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.EwmhDesktops (ewmh)
import XMonad.Hooks.ManageDocks --(manageDocks, avoidStruts, ToggleStruts)
import XMonad.Hooks.ManageHelpers
import XMonad.Layout.Fullscreen
import XMonad.Layout.NoBorders
import XMonad.Layout.Spacing
import XMonad.Layout.Spacing
import XMonad.Prompt
import XMonad.Util.EZConfig
import XMonad.Util.Run
import XMonad.Util.SpawnOnce

import System.Taffybar.Support.PagerHints (pagerHints)

myTerminal = "termite"

myFocusFollowsMouse = False

myClickJustFocuses = False

myBorderWidth = 1

myModMask = mod4Mask

myNormalBorderColor = "#242424"

myFocusedBorderColor = "#8EB33B"

myKeys =
  [ (("M-C-b"), sendMessage $ ToggleStruts)
  , (("M-q"), spawn myRestart)
  , ( ("M-p")
    , spawn "dmenu_run -w 400 -x 600 -y 450 -l 5 -fn \"Envy Code R-14\"")
  ]

--myDmenu = "dmenu_run -w 400 -x 600 -y 450 -fn Envy Code R-10 -l 5 -nb #242424"
myWorkspaces = ["dev", "web", "chat", "misc", "video", "img", "VII"]

myLayout =
  tiled_space ||| tiled ||| mirror_space ||| mirrored ||| full ||| fullnoborder
  where
    tiled_space = spacing 20 $ Tall nmaster delta ratio
    tiled = Tall nmaster delta ratio
    mirrored = Mirror (Tall nmaster delta ratio)
    mirror_space = spacing 20 $ Mirror (Tall nmaster delta ratio)
    full = Full
    fullnoborder = noBorders (fullscreenFull Full)
        --Default number of windows in master pane:
    nmaster = 1
        --Default proportion of screen occupied by master pane:
    ratio = 5 / 8
        --Percent of screen to increment by when resizing panes
    delta = 5 / 100

myStartupHook = do
  spawn "setxkbmap us"
  spawn "xbindkeys"
  spawn "xmodmap ~/.xmodmap-esc"
  spawn "firefox"
  spawn "status-notifier-watcher"
  spawn "pnmixer"

myManageHook =
  manageDocks <+>
  composeAll
    [ className =? "Firefox" --> doShift "web"
    , className =? "mpv" --> doShift "video"
    ]

--Manually handle the recompilation while killing the statusbar.
myRestart =
  "pkill status-notifier-watcher && xmonad --recompile && xmonad --restart"

main =
  xmonad $
    -- Let XMonad handle TaffyBar
  docks $
    -- TaffyBar log info
  ewmh $
  pagerHints
    defaultConfig
        -- simple stuff
      { terminal = myTerminal
      , focusFollowsMouse = myFocusFollowsMouse
      , clickJustFocuses = myClickJustFocuses
      , borderWidth = myBorderWidth
      , modMask = myModMask
      , normalBorderColor = myNormalBorderColor
      , focusedBorderColor = myFocusedBorderColor
        -- key bindings
        -- hooks, layouts
      , layoutHook = avoidStruts $ myLayout
      , manageHook = myManageHook
      , workspaces = myWorkspaces
      , startupHook = myStartupHook
      } `additionalKeysP`
  myKeys
