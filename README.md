# Docker Setup for privat Microservice Environment

## Introduction

This repository contains the docker-compose.yaml to set up a privat microservice Environemnt containing: DDNS service, Gitea, Nextcloud, reverse proxy with letsencrypt, Portainer and Vaultwarden.

## Installation

Within the docker-compose.yaml are references for environment files (e.g. db.env), all named with *.env. These files are user specific, containing secrets and personal data like passwords and email addresses. These files need to be created and put into the same directory, where the docker-compose.yaml file is located. <br><br>
The update-image.sh upgrades every image, that can be upgraded and should be executed at least once per week (can be scheduled with e.g. Crontab). The automatic rebuild of the docker container is not included but can be added if wished.

## Example for each Environment file

### bitwarden.env

```
VIRTUAL_HOST=<your subdomain>
LETSENCRYPT_HOST=<your subdomain>
WEBSOCKET_ENABLED=true
SIGNUPS_ALLOWED=false
```

### db.env

```
MYSQL_ROOT_PASSWORD=<your root password>
MYSQL_PASSWORD=<your user password>
MYSQL_DATABASE=<your database name>
MYSQL_USER=<your sql user>

```

### ddns.env

note: works only with cloudflare
```
ZONE=<your zone>
API_KEY=<your api key>
PROXIED=true

```

### gitea.env

```
USER_UID=<your uid for git user>
USER_GID=<your gid for git user>
GITEA__database__DB_TYPE=<database type like mysql>
GITEA__database__HOST=<ip or name of your database for gitea>
GITEA__database__NAME=<name of your database>
GITEA__database__USER=<your database user>
GITEA__database__PASSWD=<your database password>
VIRTUAL_HOST=<your subdomain>
LETSENCRYPT_HOST=<your subdomain>
VIRTUAL_PORT=3000

```

### gitea-db.env

```
MYSQL_ROOT_PASSWORD=<your database root password>
MYSQL_USER=<your database user>
MYSQL_PASSWORD=<your database user password>
MYSQL_DATABASE=<your database name>

```

### nextcloud.env

```
VIRTUAL_HOST=<your subdomain>
LETSENCRYPT_HOST=<your subdomain>
LETSENCRYPT_EMAIL=<your email for letsencrypt>

```

### nginx.env

```
SSL_POLICY=Mozilla-Modern

```

### nginx-le.env

```
DEFAULT_EMAIL=<your email for letsencrypt>

```

### portainer.env

```
VIRTUAL_HOST=<your subdomain>
LETSENCRYPT_HOST=<your subdomain>
VIRTUAL_PORT=9000

```

## Author

| Name           | Email                                              |
| -------------- | ---------------------------------------------------|
| Luca Schwarz   | [lucky.f-black@web.de](mailto:lucky.f-black@web.de)|