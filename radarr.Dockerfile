FROM lscr.io/linuxserver/radarr:latest

ENV PUID=1000
ENV PGID=1000
ENV TZ=Etc/UTC

COPY ./mock-htpc/radarr/ /config
COPY ./mock-htpc/movies /movies
COPY ./mock-htpc/films /films

