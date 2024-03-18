# Managarr Demo
A demo repository with a basic HTPC configuration for demonstration and testing purposes with [Managarr](https://github.com/Dark-Alex-17/managarr).

## One-Command Run
To clone the repo and run the demo all in one go, the following command will download the [managarr-demo](./managarr-demo.sh) script and run it:
```shell
curl https://raw.githubusercontent.com/Dark-Alex-17/managarr-demo/main/managarr-demo.sh > /tmp/managarr-demo.sh && bash /tmp/managarr-demo.sh
```

**Note**: This script will only work on systems with `bash` installed.

## Running the demo
To run this demo, simply run the [demo script](./managarr-demo.sh):
```shell
./managarr-demo.sh
```

## Limitations
This demo has no download functionality. It is an eventual goal to have a mock API for one of the BitTorrent clients like Transmission
to emulate this functionality for a full demo experience.

## Building
To build and push both the [prowlarr](./prowlarr.Dockerfile) and [radarr](./radarr.Dockerfile) images, it is easiest to just use the [build script](./build.sh):

```shell
./build.sh
```

## Running directly with docker compose
If you wish to run the demo directly from the [docker-compose.yml](./docker-compose.yml), 
you can either run it simply with

```shell
docker compose run --rm managarr
```

which will use the [default managarr configuration file](./mock-htpc/managarr/config.yml), or you can specify it manually with the `MANAGARR_CONFIG` environment variable:

```shell
MANAGARR_CONFIG=/tmp/managarr.yml docker compose run --rm managarr
```

## Creator
* [Alex Clarke](https://github.com/Dark-Alex-17)

