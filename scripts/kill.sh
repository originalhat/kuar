#!/usr/bin/env bash

set -efux

CONTAINER_ID=$(docker ps -a | grep originalhat/kuard-amd64:1 | cut -f1 -d " ")


if [ -z ${CONTAINER_ID+x} ]; then
  docker stop $CONTAINER_ID
  docker rm   $CONTAINER_ID
else
 echo 'already stopped'
fi
