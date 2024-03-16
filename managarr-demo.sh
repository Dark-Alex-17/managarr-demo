#!/bin/bash

fail() {
  result=$?
  if [ "$result" != "0" ]; then
      echo "Fail to run the Managarr demo"
  fi
  exit $result
}

trap "fail" EXIT
set -e

[ -d /tmp/managarr-demo ] || git clone git@github.com:Dark-Alex-17/managarr-demo.git /tmp/managarr-demo 

docker compose run --rm managarr && docker compose down && docker image rm darkalex17/managarr

