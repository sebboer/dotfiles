#!/bin/bash

if [ $(pidof redshift) -gt 0 ]
then
	killall redshift &
else
	redshift ~/.config/redshift.conf &
fi

