import XMonad
import XMonad.Hooks.ManageDocks
import XMonad.Util.Run
import XMonad.Hooks.DynamicLog
import XMonad.Util.CustomKeys
import XMonad.Util.EZConfig

import qualified Graphics.X11.ExtraTypes.XF86 as XF86

main = do
xmproc <- spawnPipe "xmobar"
xmonad $ defaultConfig
  { terminal = "gnome-terminal"
  , manageHook = manageDocks <+> manageHook defaultConfig
  , layoutHook = avoidStruts $ layoutHook defaultConfig
  , logHook = dynamicLogWithPP $ defaultPP { ppOutput = hPutStrLn xmproc, ppOrder = \(ws:_:t:_) -> [ws,t] }
  , borderWidth = 3
  }
  `additionalKeys` [ ((mod1Mask, xK_p), spawn "exe=`dmenu_path | /home/sur/.cabal/bin/yeganesh -- -b -fn xft:PragmataPro:size=12` && eval \"exec $exe\"")
                   , ((0, XF86.xF86XK_MonBrightnessUp), spawn "xbacklight -inc 10")
                   , ((0, XF86.xF86XK_MonBrightnessDown), spawn "xbacklight -dec 10")
                   , ((0, XF86.xF86XK_AudioRaiseVolume), spawn "amixer -D pulse sset Master 5%+")
                   , ((0, XF86.xF86XK_AudioLowerVolume), spawn "amixer -D pulse sset Master 5%-")
                   , ((0, XF86.xF86XK_AudioMute), spawn "amixer -D pulse sset Master mute")
                   
                   ]
