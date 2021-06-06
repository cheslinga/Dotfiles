#!/usr/bin/env bash

rofi_command="rofi"

# Options
steam="Steam"
lutris="Lutris"
df="Dwarf Fortress LNP"
minecraft="MultiMC"
brogue="Brogue CE"
dcss="Dungeon Crawl Stone Soup"
sil="Sil-Q"
cdda="Cataclysm: Dark Days Ahead (tiles)"
quake="Quake (Darkplaces)"
openmw="Open Morrowind"

# Variable passed to rofi
options="$steam\n$lutris\n$df\n$minecraft\n$brogue\n$sil\n$dcss\n$cdda\n$quake\n$openmw"

chosen="$(echo -e "$options" | $rofi_command -p "Games Launcher" -dmenu -selected-row 0)"
case $chosen in
	$steam)
		steam
		;;
	$lutris)
		lutris
		;;
	$df)
		exec /home/scoob/Games/LinuxLNP/startlnp
		;;
	$minecraft)
		multimc
		;;
    $brogue)
        exec /home/scoob/Games/BrogueCE/brogue
        ;;
    $sil)
        cd /home/scoob/Games/Sil
        exec ./sil
        ;;
    $dcss)
        cd /home/scoob/Games/dcss
        exec /home/scoob/Games/dcss/bin/crawl
        ;;
    $cdda)
        cataclysm-tiles
        ;;
	$quake)
		darkplaces-sdl -basedir /mnt/hdd/SteamLib/steamapps/common/Quake
		;;
	$openmw)
		openmw
		;;
esac
