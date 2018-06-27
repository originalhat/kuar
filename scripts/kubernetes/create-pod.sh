#!/usr/bin/env bash

set -efux

# create manually
# kubectl run kuard --image=originalhat/kuard-amd64:1

# create via manifest
kubectl apply -f config/kuard-pod.yaml

