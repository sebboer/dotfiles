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
