FROM lscr.io/linuxserver/lidarr:latest

ENV PUID=1000
ENV PGID=1000
ENV TZ=Etc/UTC

COPY ./mock-htpc/lidarr/ /config
COPY ./mock-htpc/music /music
