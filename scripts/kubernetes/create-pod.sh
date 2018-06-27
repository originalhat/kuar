#!/usr/bin/env bash

set -efux


if [ $# -eq 0 ]; then
  echo "no config file specified"
else
  kubectl apply -f $1
fi

