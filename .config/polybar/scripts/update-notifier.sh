#!/bin/bash

query=`yay -Qu`
if [[ $query == *"Get https://aur.archlinux.org"* ]]; then
	echo "-"
else
	if [[ -z "$query"  ]]; then
		echo "0"
	else
		echo $query | wc -l
	fi
#	yay -Qu | wc -l
fi
