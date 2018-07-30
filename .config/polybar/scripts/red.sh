#!/bin/bash

if [[ $(cat ~/.config/polybar/scripts/.red-cache) -eq 1 ]]; then
currenttime=$(date +%H)
if [[ "$currenttime" -ge "21" ]] || [[ "$currenttime" -le "06" ]]; 
then
	
	if [[ $(pidof redshift | wc -w) -eq 0 ]];
	then
		redshift -c /home/basti/.config/redshift.conf &
	fi
	echo ""
else
	killall redshift &
	echo ""
fi
else
	killall redshift &
	echo ""
fi
