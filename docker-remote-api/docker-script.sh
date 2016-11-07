#!/bin/bash

BASEDIR=$(dirname $0)
ACTION=$1

IMAGE_NAME=docker-remote-api

if [ -z "$ACTION" ];
  then
    echo "usage: $0 <run|stop|start|remove|rerun|attach|push|logs>";
    exit 1;
fi

_build() {
  # Build
  docker build --tag="cghome/docker-remote-api" .
}

_run() {    
    docker run --restart always -p 2376:2375 -v /var/run/docker.sock:/var/run/docker.sock jarkt/docker-remote-api
}

_stop() {
  # Stop
  docker stop $IMAGE_NAME
}

_start() {
  # Start (after stopping)
  docker start $IMAGE_NAME
}

_remove() {
  # Remove
  docker rm $IMAGE_NAME
}

_rerun() {
  _stop
  _remove
  _run
}

_attach() {
  docker exec -ti $IMAGE_NAME bash
}

_logs() {
  docker logs $IMAGE_NAME
}

eval _$ACTION