#!/bin/bash

BASEDIR=$(dirname $0)
ACTION=$1

IMAGE_NAME=che

if [ -z "$ACTION" ];
  then
    echo "usage: $0 <run|stop|start|remove|rerun|attach|push|logs>";
    exit 1;
fi

_build() {
  # Build
  docker build --tag="cghome/che" .
}

_run() {    
    docker run -ti --net=host -v /var/run/docker.sock:/var/run/docker.sock -v $(PWD)/lib:/home/user/che/lib-copy -v $(PWD)/workspaces:/home/user/che/workspaces  -v $(PWD)/tomcat/temp/local-storage:/home/user/che/tomcat/temp/local-storage --name $IMAGE_NAME codenvy/che
}

_runx() {    
    # (Not working) Run the latest released version of Che
    docker run -ti --net=host \
            -v /var/run/docker.sock:/var/run/docker.sock \ 
            -v $(PWD)/lib:/home/user/che/lib-copy \
            -v $(PWD)/workspaces:/home/user/che/workspaces \ 
            -v $(PWD)/tomcat/temp/local-storage:/home/user/che/tomcat/temp/local-storage \ 
            --name $IMAGE_NAME \
            cghome/che
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