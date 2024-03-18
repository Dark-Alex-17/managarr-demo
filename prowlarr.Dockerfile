FROM lscr.io/linuxserver/prowlarr:latest

ENV PUID=1000
ENV PGID=1000
ENV TZ=Etc/UTC

COPY ./mock-htpc/prowlarr/ /config

