#!/bin/bash

currenttime=$(date +%H)
if [[ "$currenttime" -ge "21" ]] || [[ "$currenttime" -le "06" ]];
then
	
	if [[ $(pidof redshift | wc -w) -eq 0 ]];
	then
		redshift -c /home/basti/.config/redshift.conf &
	fi
	echo ""
else
	redshift -x
	echo "1"
fi
