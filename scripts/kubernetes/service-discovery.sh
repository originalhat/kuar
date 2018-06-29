#!/usr/bin/env bash

set -efux

kubectl run alpaca-prod \
  --image=originalhat/kuard-amd64:1 \
  --replicas=3 \
  --port=8080 \
  --labels="ver=1,app=alpaca,env=prod"

kubectl expose deployment alpaca-prod


kubectl run bandicoot-prod \
  --image=originalhat/kuard-amd64:2 \
  --replicas=2 \
  --port=8080 \
  --labels="ver=2,app=bandicoot,env=prod"

kubectl expose deployment bandicoot-prod


kubectl get services -o wide

