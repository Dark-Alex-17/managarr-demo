#!/bin/bash

DEMO_TEMP_DIR=/tmp/managarr-demo

fail() {
  result=$?
  if [ "$result" != "0" ]; then
      echo "Fail to run the Managarr demo"
  fi
  exit $result
}

trap "fail" EXIT
set -e

[ -d "$DEMO_TEMP_DIR" ] || git clone git@github.com:Dark-Alex-17/managarr-demo.git "$DEMO_TEMP_DIR" 

docker compose -f "$DEMO_TEMP_DIR/docker-compose.yml" run --rm managarr &&\
  docker compose -f "$DEMO_TEMP_DIR/docker-compose.yml" down &&\
  docker image rm darkalex17/managarr &&\
  rm -rf /tmp/managarr-demo.sh
