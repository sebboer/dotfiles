#!/bin/zsh

mntType=$(echo "nfs\nlsblk" | rofi -dmenu -i -l 10 -p "What type do you want to mount?")

case "$mntType" in
	nfs)
		~/.config/scripts/mount/nas-mount.sh
		;;
	lsblk)
		~/.config/scripts/mount/lsblk-mount.sh
		;;
	*)
		echo "$mntType not found"
		exit 2
esac


