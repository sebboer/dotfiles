#!/bin/bash

if [ $(pidof redshift) > 0 ]
then
	killall redshift &
else
	redshift ~/.config/redshift.conf &
fi

