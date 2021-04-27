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

