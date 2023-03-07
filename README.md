# Docker Setup for privat Microservice Environment

## Introduction

This repository contains the docker-compose.yaml to set up a privat microservice Environemnt containing: DDNS service, Gitea, Nextcloud, reverse proxy with letsencrypt, Portainer and Vaultwarden.

## Installation

Within the docker-compose.yaml are references for environment files (e.g. db.env), all named with *.env. These files are user specific, containing secrets and personal data like passwords and email addresses. These files need to be created and put into the same directory, where the docker-compose.yaml file is located. <br><br>
The update-image.sh upgrades every image, that can be upgraded and should be executed at least once per week (can be scheduled with e.g. Crontab). The automatic rebuild of the docker container is not included but can be added if wished.

## Example for each Environment file

Chapter will be added soon

## Author

| Name           | Email                                              |
| -------------- | ---------------------------------------------------|
| Luca Schwarz   | [lucky.f-black@web.de](mailto:lucky.f-black@web.de)|