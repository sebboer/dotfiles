#!/bin/sh

if [ "$(systemctl is-active docker.service)" = "active" ]; then
#	echo ""
	echo ""
else
	echo ""
fi
