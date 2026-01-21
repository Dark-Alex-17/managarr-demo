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
This repo uses [just](https://github.com/casey/just) to manage build tasks.

To build any individual mock Servarr docker image or even all of them, you can use the `build` recipes in the [justfile](./justfile):

```shell
$ just --list
Available recipes:
    ...
    
    [build]
    build-all      # Build all mock container images
    build-lidarr   # Build the Lidarr mock image
    build-prowlarr # Build the Prowlarr mock image
    build-radarr   # Build the Radarr mock image
    build-sonarr   # Build the Sonarr mock image

    ...
```

## Pushing
This repo uses [just](https://github.com/casey/just) to manage push tasks.

To push any individual mock Servarr docker image or even all of them, you can use the `push` recipes in the [justfile](./justfile):

```shell
$ just --list
Available recipes:
    ...

    [push]
    push-all       # Push all mock container images
    push-lidarr    # Push the Lidarr mock image
    push-prowlarr  # Push the Prowlarr mock image
    push-radarr    # Push the Radarr mock image
    push-sonarr    # Push the Sonarr mock image

    ...
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

