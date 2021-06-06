#!/usr/bin/env bash

rofi_command="rofi"

# Options
emacs="DOOM Emacs"
clion="CLion"

# Variable passed to rofi
options="$clion\n$emacs"

chosen="$(echo -e "$options" | $rofi_command -p "Games Launcher" -dmenu -selected-row 0)"
case $chosen in
	$clion)
		clion
		;;
	$emacs)
		emacs
		;;
esac
