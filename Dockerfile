FROM python:3.7.4-alpine3.10

RUN apk add --update --no-cache \
    bash jq curl git openssl
