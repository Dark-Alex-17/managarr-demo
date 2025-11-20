#!/bin/bash
docker build -f radarr.Dockerfile -t darkalex17/radarr-mock:latest .
docker push darkalex17/radarr-mock:latest

docker build -f sonarr.Dockerfile -t darkalex17/sonarr-mock:latest .
docker push darkalex17/sonarr-mock:latest

docker build -f prowlarr.Dockerfile -t darkalex17/prowlarr-mock:latest .
docker push darkalex17/prowlarr-mock:latest
