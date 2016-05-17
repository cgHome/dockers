#  ---------------------------------------------------------------------------
#   Docker addon's
#  ---------------------------------------------------------------------------

function docker-clean() {
  docker rmi -f $(docker images -q -a -f dangling=true)
}

function docker-toRegistry(){
    if [[ -z "$1" ]]; then
        echo "Usage:	docker-toRegistry NAME[:TAG|@DIGEST]"
    else
        echo "'$1' to local registry"
        docker pull $1 && docker tag $1 localhost:5000/$1
        docker push localhost:5000/$1
    fi
}

function docker-sh {
    if [[ $# -eq 0 ]]; then
        docker exec -it $(docker ps -l -q) sh
    else
        docker exec -it $1 sh
    fi
}