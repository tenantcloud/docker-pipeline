FROM python:3.7.4-alpine3.10

RUN apk add --update --no-cache \
    bash \
    jq \
    curl \
    git \
    openssl \
    unzip \
    && curl -L -o /usr/local/bin/slack https://git.io/fAhXh \
    && chmod +x /usr/local/bin/slack \
    && VAULT_VERSION=1.4.2 \
    && curl -sSLo /tmp/vault.zip https://releases.hashicorp.com/vault/$VAULT_VERSION/vault_${VAULT_VERSION}_linux_amd64.zip \
    && unzip -d /bin /tmp/vault.zip \
    && rm -rf /tmp/vault.zip
