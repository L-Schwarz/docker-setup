#!/bin/bash

docker build -t server/debian-debug .
docker run --name debug -it server/debian-debug