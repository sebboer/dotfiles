#!/bin/bash


usage() { echo "Usage: $0 [-size <1720x1440>] [-offset <1720>]" 1>&2; exit 1; }

size="1720x1440"
screen_offset=0


while getopts "s:o:p:" o; do
    case "${o}" in
	o)
		screen_offset=${OPTARG}
		;;
	s)
		size=${OPTARG}
		;;
	p)
		picture=true
		;;
        *)
		usage
            	;;
    esac
done
shift $((OPTIND-1))

if [ ! -z p ]; then
	~/.config/scripts/picture_in_picture.sh &
fi

ffmpeg -video_size $size -framerate 25 -f x11grab -i :0.0+${screen_offset} -f pulse -ac 2 -i 0 ~/Videos/out.mkv -async 1 -vsync 1
