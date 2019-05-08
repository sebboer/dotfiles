#!/bin/bash

umount=$(lsblk -Jp | jq '.blockdevices[] | select(.children!=null) | .children[] | select(.mountpoint!=null) | select(.mountpoint|startswith("'$HOME'")) | [.name, .mountpoint, .label, .size] | join(" ")'  -r | rofi -dmenu -i -l 10 -p "Umount Disk" | awk '{print $2}')
[[ "$umount" = "" ]] && exit 1

sudo umount $umount && notify-send -a Mounter $umount umount

