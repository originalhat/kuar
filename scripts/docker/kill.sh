#!/usr/bin/env bash

set -efux

CONTAINER_ID=$(docker ps -a | grep originalhat/kuard-amd64:1 | cut -f1 -d " ")

echo ${CONTAINER_ID+x}

if [ -n "$CONTAINER_ID" ]; then
  docker stop $CONTAINER_ID
  docker rm   $CONTAINER_ID
else
  echo 'already stopped'
fi
