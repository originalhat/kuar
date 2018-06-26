#!/usr/bin/env bash

set -efux

docker tag kuard-amd64:1 originalhat/kuard-amd64:1
docker images

