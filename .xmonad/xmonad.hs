import XMonad
import XMonad.Layout.NoBorders
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.ManageDocks
import XMonad.Util.Run(spawnPipe)
import XMonad.Util.EZConfig(additionalKeys)
import System.IO

main = do
	xmonad $ defaultConfig
		{
			terminal = "urxvt",
			manageHook = manageDocks <+> manageHook defaultConfig,
			layoutHook = avoidStruts $ smartBorders $ layoutHook defaultConfig
		}
