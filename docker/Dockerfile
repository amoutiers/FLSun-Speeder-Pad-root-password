### Build image
FROM alpine:3.17

    RUN apk add \
        sed \
        zip

    COPY ./src/create-update /usr/local/bin/create-update
    RUN chmod +x /usr/local/bin/*
    COPY ./src/update.tpl /update.tpl

    WORKDIR /
