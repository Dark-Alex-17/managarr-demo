FROM lscr.io/linuxserver/sonarr:latest

ENV PUID=1000
ENV PGID=1000
ENV TZ=Etc/UTC

COPY ./mock-htpc/sonarr/ /config
COPY ./mock-htpc/tv /tv

