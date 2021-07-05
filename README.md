
[![Build Status](https://github.com/tenantcloud/docker-pipeline/workflows/Enlarge%20version/badge.svg)](https://github.com/tenantcloud/docker-pipeline/workflows/Enlarge%20version/badge.svg)
[![Stable Version](https://img.shields.io/github/v/tag/tenantcloud/docker-pipeline)](https://img.shields.io/github/v/tag/tenantcloud/docker-pipeline)

# Alpine image for Bitbucket pipeline

## Installed software

- bash
- jq
- curl
- git (+ lfs)
- openssl
- slack (CLI Client)
- vault
- awscli
- yarn (1.16.0)
- npm (6.14.11)
- node (v12.21.0)
- tcctl

## Configure a Slack

```bash
echo "slack API token" > /usr/local/bin/.slack
```
