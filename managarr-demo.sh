#!/bin/bash

DEMO_TEMP_COMPOSE_FILE=/tmp/docker-compose.yml
DEMO_TEMP_CONFIG_FILE=/tmp/config.yml

cleanup() {
  docker compose -f "$DEMO_TEMP_COMPOSE_FILE" down

  docker rmi -f $(docker images | grep "darkalex17" | awk '{print $3}')

  rm -rf "$DEMO_TEMP_COMPOSE_FILE"
  rm -rf "$DEMO_TEMP_CONFIG_FILE"
  rm -rf /tmp/managarr-demo.sh
}

fail() {
  result=$?
  cleanup
  if [ "$result" != "0" ]; then
      echo "Failed to run the Managarr demo"
  fi
  exit $result
}

main() {
  [ -f "$DEMO_TEMP_COMPOSE_FILE" ] || curl https://raw.githubusercontent.com/Dark-Alex-17/managarr-demo/main/docker-compose.yml > "$DEMO_TEMP_COMPOSE_FILE"
  [ -f "$DEMO_TEMP_CONFIG_FILE" ] || curl https://raw.githubusercontent.com/Dark-Alex-17/managarr-demo/main/mock-htpc/managarr/config.yml > "$DEMO_TEMP_CONFIG_FILE"

  MANAGARR_CONFIG="$DEMO_TEMP_CONFIG_FILE" docker compose -f "$DEMO_TEMP_COMPOSE_FILE" run --rm managarr

  cleanup
}

trap "fail" EXIT
set -e
main

