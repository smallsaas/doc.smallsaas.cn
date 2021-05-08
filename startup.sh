#!/bin/sh
# yml=$1
# if [ ! -f $yml ];then
#   echo 'usage: build.sh </path/to/docker-compose.yml>'
#   exit
# fi
# COMPOSE_DOCKER_CLI_BUILD=1 docker-compose -f $yml build

COMPOSE_DOCKER_CLI_BUILD=1 docker-compose up --build --detach
