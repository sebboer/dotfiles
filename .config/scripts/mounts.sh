#!/bin/bash

mountpoint=$(lsblk -Jp | jq '.blockdevices[] | select(.children!=null) | .children[] | select(.type=="part") | select(.mountpoint==null) | select(.size|endswith("G")) | [.name, .size, .label] | join(" ")' -r | rofi -dmenu -i -p "Mount Disk" | awk '{print $1}')

[[ "$mountpoint" = "" ]] && exit 1
where=$(exa -l ~/mnt | awk '{print $7}' | rofi -dmenu  -i -p)
[[ "$where" = "" ]] && exit 1
where=~/mnt/$where

sudo mount $mountpoint $where 
