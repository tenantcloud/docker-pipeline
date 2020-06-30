FROM python:3.7.4-alpine3.10

RUN apk add --update --no-cache \
    bash \
    jq \
    curl \
    git \
    openssl \
    && curl -L -o /usr/local/bin/slack https://git.io/fAhXh \
    && chmod +x /usr/local/bin/slack
