#!/usr/bin/env bash
function start {
  echo 'Starting Docker environment . . .'
  exists
}

function webcall {
  echo 'Opening web browser . . .'
  sleep 5 && python3 -m webbrowser http://localhost:8080
}

function stop {
  echo 'Stoping environment . . .'
  docker-compose --project-name spacenet7 down
}

function cleanup {
  echo "Removing volume . . ."
  docker rmi rm earth_postgres-data
}

function exists {
  echo "Checking existence of docker image . . ."
  local IMAGE="$(docker image inspect -f '{{.Id}}' challenge-spacenet-notebooks)"
  if [ -f "$IMAGE" ]; then
    echo "Image exist, runnning container . . ."
    docker-compose --project-name spacenet7 up -d && webcall
  else
    echo "Image doesn't exist, building image . . ."
    docker-compose build spacenet-notebooks
    echo "Image build successful, running container . . ."
    docker-compose --project-name spacenet7 up -d && webcall
  fi

}

function get_weights {
  aws s3 cp s3://spacenet-dataset/spacenet-model-weights/spacenet-7/1-lxastro0/weights/prefix.tar ./weights/1-lxastro0/weights/
}

case $1 in

start)
  start
  ;;

webcall)
  webcall
  ;;

stop)
  stop
  ;;

cleanup)
  cleanup
  ;;

exists)
  exists
  ;;

*)
  printf "ERROR: Missing command\n  Usage: $(basename $0) (start|stop|cleanup)\n"
  exit 1
  ;;
esac
