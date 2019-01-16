#!/bin/bash


usage() { echo "Usage: $0 [-s <bool>] [-a <bool>]" 1>&2; exit 1; }

a=false
file=~/Videos/out.mkv
size=$(xrandr | ag primary | awk '{print $4;}' | cut -d'+' -f 1)
output=':0.0'
y=0
x=0

while getopts "a:x:y:s:" o; do
    case "${o}" in
        a)
		a=true
	    	;;
	s)
		s=${OPTARG}
		;;
	x)
		x=${OPTARG}
		;;
	y)
		y=${OPTARG}
		;;
        *)
		usage
            	;;
    esac
done
shift $((OPTIND-1))

if [ ! -z $1 ]; then
	file=$1
fi

if [ ! -z $s ]; then
	size=$s
fi

output=$output+$x

output=$output,$y
	

echo -e '\033[1;33mRecording Screen with Size: '$size' on x='$x' y='$y' Audio='$a' Output='$file'\033[0m'

if $a; then
	ffmpeg \
	-f x11grab \
	-s $size \
	-i $output \
	-f pulse \
	-i default \
	$file
else
	ffmpeg \
	-f x11grab \
	-s $size \
	-i $output \
	$file
fi

