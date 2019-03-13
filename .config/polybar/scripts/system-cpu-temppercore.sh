#!/bin/sh

sensors | grep Tdie | awk '{print substr($2, length($2)-5)}'
