#!/bin/bash

umount=$(lsblk -Jp | jq '.blockdevices[] | select(.children!=null) | .children[] | select(.mountpoint!=null) | select(.mountpoint|startswith("'$HOME'")) | [.name, .mountpoint, .label, .size] | join(" ")'  -r | rofi -dmenu -i -l 10 -p "Umount Disk" | awk '{print $2}')
[[ "$umount" = "" ]] && exit 1

ERROR=$(  sudo umount $umount 2>&1 )

if [ $? -eq 0 ]; then
	notify-send -i hdd -a Mounter "$umount umount"
else
	notify-send -i hdd -u critical -a Mounter "$ERROR"
fi


