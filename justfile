VERSION := "latest"
REPO := "darkalex17"

# List all recipes
default:
    @just --list

# Build the Radarr mock image
[group: 'build']
@build-radarr:
    docker build -f radarr.Dockerfile -t {{REPO}}/radarr-mock:{{VERSION}} .

# Build the Sonarr mock image
[group: 'build']
@build-sonarr:
    docker build -f sonarr.Dockerfile -t {{REPO}}/sonarr-mock:{{VERSION}} .

# Build the Lidarr mock image
[group: 'build']
@build-lidarr:
    docker build -f lidarr.Dockerfile -t {{REPO}}/lidarr-mock:{{VERSION}} .

# Build the Prowlarr mock image
[group: 'build']
@build-prowlarr:
    docker build -f prowlarr.Dockerfile -t {{REPO}}/prowlarr-mock:{{VERSION}} .

# Build all mock container images
[group: 'build']
@build-all: build-radarr build-sonarr build-lidarr build-prowlarr

# Push the Radarr mock image
[group: 'push']
@push-radarr: build-radarr
    docker push {{REPO}}/radarr-mock:{{VERSION}}

# Push the Sonarr mock image
[group: 'push']
@push-sonarr: build-sonarr
    docker push {{REPO}}/sonarr-mock:{{VERSION}}

# Push the Lidarr mock image
[group: 'push']
@push-lidarr: build-lidarr
    docker push {{REPO}}/lidarr-mock:{{VERSION}}

# Push the Prowlarr mock image
[group: 'push']
@push-prowlarr: build-prowlarr
    docker push-t {{REPO}}/prowlarr-mock:{{VERSION}}

# Push all mock container images
[group: 'push']
@push-all: push-radarr push-sonarr push-lidarr push-prowlarr

# Run the demo
[group: 'run']
@run-demo:
    docker compose run --rm managarr
