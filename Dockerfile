FROM python:3.7.4-alpine3.10

ENV ALPINE_MIRROR "http://dl-cdn.alpinelinux.org/alpine"

RUN apk add --no-cache \
    bash \
    jq \
    curl \
    git \
    git-lfs \
    openssl \
    unzip \
    openssh \
    && pip3 --no-cache-dir install awscli ecs-deploy \
    && curl -L -o /usr/local/bin/slack https://git.io/fAhXh \
    && chmod +x /usr/local/bin/slack \
    && VAULT_VERSION=1.4.2 \
    && curl -sSLo /tmp/vault.zip https://releases.hashicorp.com/vault/$VAULT_VERSION/vault_${VAULT_VERSION}_linux_amd64.zip \
    && unzip -d /usr/bin /tmp/vault.zip \
    && rm -rf /tmp/vault.zip \
    && curl -L -s https://git.io/JU3Fy | bash \
    && echo "${ALPINE_MIRROR}/v3.11/main/" >> /etc/apk/repositories \
    && apk add nodejs npm yarn --repository="http://dl-cdn.alpinelinux.org/alpine/v3.11/main/"

