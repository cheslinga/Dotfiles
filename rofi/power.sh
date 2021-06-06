#!/usr/bin/env bash

rofi_command="rofi"

# Options
shutdown="Shut Down"
reboot="Reboot"
lock="Lock the Screen"
stopx="Leave X Session"


# Variable passed to rofi
options="$shutdown\n$reboot\n$lock\n$stopx"

chosen="$(echo -e "$options" | $rofi_command -p "Power Menu" -dmenu -selected-row 2)"
case $chosen in
    $shutdown)
        sudo shutdown -P now
        ;;
    $reboot)
       sudo reboot
       ;;
    $lock)
       env XSECURELOCK_NO_COMPOSITE=1 xsecurelock
       ;;
    $stopx)
       bspc quit
       ;;
esac
