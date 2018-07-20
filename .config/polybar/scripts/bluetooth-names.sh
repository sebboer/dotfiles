#!/bin/bash
devices=()

for p in $(bt-device -l | grep -o -E '([[:xdigit:]]{1,2}:){5}[[:xdigit:]]{1,2}');do
	if [[ $(bt-device -i ${p} | grep 'Connected: 1') ]]; then
		DEV=$(bt-device -i $p | grep "Name: ") 
		DEV="$(echo $DEV | sed -e 's/^Name: //')"
		#devices=$devices$DEV" |"
		devices+=( "$DEV" )
	fi
done
if [ ${#devices[@]} -gt 0 ]; then
	printf '%s | ' "${devices[@]:0:2}"
fi
