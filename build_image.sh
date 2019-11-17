#!/bin/bash

case "$1" in
	DOCKERFILE)
	echo "Building from Dockerfile..."
    	docker build -f docker/Dockerfile -t task2 .
	docker run -d -p 1112:8000 task2
    ;;

    DOCKERHUB)
	echo "Building from DockerHub..."
	docker-compose -f docker/docker-compose.yml up -d
    ;;

    STOP)
    	docker container stop `docker container ls |grep task2|awk {'print $1'}`
    ;;

    *)
        echo "Usage DOCKERFILE|DOCKERHUB|STOP"
    ;;
esac
