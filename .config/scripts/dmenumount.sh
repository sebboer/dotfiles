#!/bin/sh


mountable=$( lsblk -lp -o NAME,SIZE,LABEL,TYPE,MOUNTPOINT | grep "part $" | awk '{print $3 "\t" , $1 , "(" $2 ")" }')
[[ "$mountable" = "" ]] && exit 1
chosen=$(echo "$mountable" | rofi -dmenu -i -p "Mount Drive" | awk '{print $1}')
[[ "$chosen" = "" ]] && exit 1
sudo mount "$chosen" && exit 0

dirs=$(find /mnt /mount ~/mnt -type d -maxdepth 5 2>/dev/null)
mountpoint=$(echo "$dirs" | rofi -dmenu -i -p "Type in mount point.")
[[ "$mountpoint" = "" ]] && exit 1
if [[ ! -d "$mountpoint" ]]; then
	mkdiryn=$(echo -e "No\nYes" | rofi -dmenu -i -p "$mountpoint does not exist. Create it?")
	[[ "$mkdiryn" = Yes ]] && sudo mkdir -p "$mountpoint"
fi
sudo mount $chosen $mountpoint && pgrep -x dunst && notify-send "$chosen mounted to $mountpoint."
