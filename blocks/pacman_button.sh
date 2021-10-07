#!/bin/sh

[[ $(pacman -Qu | grep -Fcv "[ignored]") -eq 0 ]] && exit
case $1 in
	1) setsid -f termite -e ~/.scripts/pop_upgrade.sh ;;
	3) notify-send "Available updates:" "$(/usr/bin/pacman -Qu)" ;;
esac
