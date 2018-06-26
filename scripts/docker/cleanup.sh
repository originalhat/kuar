#!/usr/bin/env bash

set -efux

CONTAINER_ID=$(docker images | grep originalhat/kuard-amd64 | tr -s ' ' | cut -d ' ' -f 3)

if [ -n "$CONTAINER_ID" ]; then
  docker rmi -f $CONTAINER_ID
else
  echo 'already clean'
fi

