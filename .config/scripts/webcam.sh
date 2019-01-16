ffmpeg -f v4l2 -vcodec h264 -i /dev/video0 -r 30 -f pulse -i default ~/Videos/out.mkv
