#!/bin/sh

if [ "$(systemctl is-active docker.service)" = "active" ]; then
if [ "$(docker container ls | wc -l)" -ge 2 ]; then
	echo ""
else
	echo ""
fi
fi
