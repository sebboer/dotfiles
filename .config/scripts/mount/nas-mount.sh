#!/bin/zsh

mount=$(echo "nas-video\nnas-home\n" | rofi -dmenu -i -l 10 -p "NFS Mount")

case "$mount" in
	nas-video)
		sudo mount -t nfs 192.168.178.31:/volume1/video ~/mnt/synnas/video && notify-send -a Mounter "nas/video mounted"
		;;
	nas-home)
		sudo mount -t nfs 192.168.178.31:/volume1/homes ~/mnt/synnas/home && notify-send -a Mounter "nas/home mounted"
		;;
	*)
		echo "$mount not found"
		exit 2
esac
