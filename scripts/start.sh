#!/usr/bin/env bash

set -efux

docker run -d --name kuard \
  --publish 8080:8080 \
  --memory 200m \
  --memory-swap 1G \
  --cpu-shares 1024 \
  originalhat/kuard-amd64:1

sleep 1

curl localhost:8080

