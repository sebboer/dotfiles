#!/bin/zsh

mntType=$(echo "blk\nsmb" | rofi -dmenu -i -l 10 -p "What type do you want to mount?")

case "$mntType" in
	blk)
		~/.config/scripts/mount/blk-mount.sh
		;;
	smb)
		~/.config/scripts/mount/smb-mount.sh
		;;
	*)
		echo "$mntType not found"
		exit 2
esac


