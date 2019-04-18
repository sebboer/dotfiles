# Docker

# execute bash in docker container
dex() {
	docker container exec -it `docker container ls | grep $1 | awk '{print $1}'` bash
};

# show docker logs by grep search
dklogs() {
	docker container logs `docker container ls | grep $1 | awk '{print $1}'`
}

# show all alias docker related
dalias() { alias | grep 'docker' | sed "s/^\([^=]*\)=\(.*\)/\1 => \2/"| sed "s/['|\']//g" | sort; }

#vi-mode prompt
function zle-line-init zle-keymap-select {
    RPS1="${${KEYMAP/vicmd/ << N }/(main|viins)/<< I }"
    RPS2=$RPS1
    zle reset-prompt
}


ffmpeg-no-sound() {
	ffmpeg -i $1 -c copy -an "no-sound"$1
}

ffmpeg-extract-sound() {
	ffmpeg -i $1 -vn -acodec copy output-audio.aac
}
