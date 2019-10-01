#!/bin/sh

action=$(printf " | lock\n | suspend\n | logout\n | hibernate\n | reboot\n | shutdown" | rofi -dmenu -i -p "Power Menu " | awk '{ print $3}')
[[ "$action" = "" ]] && exit 1
yn=$(echo -e "No\nYes" | rofi -dmenu -i -p "really $action?")
[[ "$yn" = Yes ]] && ~/.config/scripts/i3exit $action
