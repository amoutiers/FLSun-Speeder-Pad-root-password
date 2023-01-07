### Build image
FROM alpine:3.17

    RUN apk add zip

    COPY ./src/create-update /usr/local/bin/create-update
    RUN chmod +x /usr/local/bin/create-update
    COPY ./src/update.tpl /update.tpl

    WORKDIR /
