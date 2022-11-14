#!/usr/bin/env bash
function start {
  echo 'Starting Docker environment . . .'
  #docker-compose build spacenet-notebooks && docker-compose --project-name spacenet7 up -d && webcall
  exists
}

function webcall {
  sleep 5 && python3 -m webbrowser http://localhost:8080
}

function stop {
  echo 'Stoping environment . . .'
  docker-compose --project-name earth down
}

function cleanup {
  echo "Removing volume"
  docker volume rm earth_postgres-data
  docker volume rm earth_superset
}

function exists {
  echo "Checking existence of docker image..."
  local IMAGE="$(docker image inspect -f '{{.Id}}' challenge-spacenet-notebooks)"
  if [ -f "$IMAGE" ]; then
    echo "Image exist, runnning container..."
    docker-compose --project-name spacenet7 up -d && webcall
  else
    echo "Image don't exist, building image..."
    docker-compose build spacenet-notebooks
    echo "Image build successful, running container..."
    docker-compose --project-name spacenet7 up -d && webcall
  fi

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
  printf "ERROR: Missing command\n  Usage: $(basename $0) (start|stop|cleanup|token|logs|update|superset-start|superset-stop|superset-init)\n"
  exit 1
  ;;
esac
