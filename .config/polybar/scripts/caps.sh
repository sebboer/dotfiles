#!/bin/bash

caps=$(xset q | ag Caps | awk ' {print $4}')
layout=$(setxkbmap -query | ag layout | awk ' {print $2} ')

if [[ $caps == "off" ]]; then
	echo $layout
else
	echo "$layout "
fi

