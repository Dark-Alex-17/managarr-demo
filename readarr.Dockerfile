FROM ghcr.io/pennydreadful/bookshelf:softcover

ENV PUID=1000
ENV PGID=1000
ENV TZ=Etc/UTC

COPY ./mock-htpc/readarr/ /config
COPY ./mock-htpc/books /books
