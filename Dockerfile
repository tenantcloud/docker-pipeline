FROM python:alpine3.12

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
    && VAULT_VERSION=1.7.0 \
    && curl -sSLo /tmp/vault.zip https://releases.hashicorp.com/vault/$VAULT_VERSION/vault_${VAULT_VERSION}_linux_amd64.zip \
    && unzip -d /usr/bin /tmp/vault.zip \
    && rm -rf /tmp/vault.zip \
    && curl -L -s https://git.io/JU3Fy | bash \
    && curl -L -s https://github.com/tenantcloud/tcctl/archive/master.zip -o /tmp/tcctl.zip \
    && cd /tmp \
    && unzip -q tcctl.zip \
    && mkdir /opt/tcctl \
    && cp -r /tmp/tcctl-master/* /opt/tcctl/ \
    && ln -s /opt/tcctl/tcctl /usr/bin/tcctl \
    && rm -rf /tmp/* \
    && apk add nodejs npm yarn \
    && npm install -g appcenter-cli

RUN git config --global user.email "team@tenantcloud.com" \
    git config --global user.name "tenantcloudteam"
