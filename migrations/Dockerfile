FROM golang:1.18

WORKDIR /migrations

COPY ./migrations /migrations
COPY ./entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
