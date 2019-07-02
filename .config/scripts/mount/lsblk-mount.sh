#!/bin/zsh

mountpoint=$(lsblk -Jp | jq ' .blockdevices[] | select(.children!=null) | .children[] | select(.type=="part") | select(.mountpoint==null) | select(.size|test(".T|G")) | [.name, .size, .label] | join(" ")' -r | rofi -dmenu -i -l 10 -p "Mount Disk" | awk '{print $1}')

[[ "$mountpoint" = "" ]] && exit 1
mountdirs=$(exa -l ~/mnt | awk '{print $7}' | grep -v "nas")
where=$(echo $mountdirs | rofi -dmenu  -i -p "Dirs to mount")
[[ "$where" = "" ]] && exit 1
where=~/mnt/$where
if [[ ! -d "$where" ]]; then
	mkdiryn=$(echo -e "No\nYes" | rofi -dmenu -i -p "$where does not exist. Create it?")
	[[ "$mkdiryn" = Yes ]] && mkdir "$where"
fi

sudo mount $mountpoint $where && notify-send -a Mounter "$mountpoint mounted to $where."

