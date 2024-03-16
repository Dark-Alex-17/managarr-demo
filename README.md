# Managarr Demo
A demo repository with a basic HTPC configuration for demonstration and testing purposes with [Managarr](https://github.com/Dark-Alex-17/managarr).

## One-Command Run
To clone the repo and run the demo all in one go, the following command will download the [managarr-demo](./managarr-demo.sh) script and run it:
```shell
curl https://raw.githubusercontent.com/Dark-Alex-17/managarr-demo/main/managarr-demo.sh | sh
```

**Note**: This script will only work on systems with `bash` installed.

## Running the demo
To run this demo, simply run the following command:

```shell
docker compose up --rm managarr && docker compose down
```

## Cleanup
This demo will download a handful of docker images. To clean up after this demo, run the following command:

```shell
docker image rm darkalex17/managarr &&\
  docker image rm lscr.io/linuxserver/radarr &&\
  docker image rm lscr.io/linuxserver/prowlarr &&\
  rm -rf /tmp/managarr-demo
```

## Limitations
This demo has no download functionality. It is an eventual goal to have a mock API for one of the BitTorrent clients like Transmission
to emulate this functionality for a full demo experience.

## Creator
* [Alex Clarke](https://github.com/Dark-Alex-17)

