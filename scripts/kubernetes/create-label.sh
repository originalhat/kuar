#!/usr/bin/env bash

set -efux

# create PROD deployment
kubectl run alpaca-prod \
  --image=originalhat/kuard-amd64:1 \
  --replicas=2 \
  --labels="ver=1,app=alpaca,env=prod"

# create TEST deployment
kubectl run alpaca-test \
  --image=originalhat/kuard-amd64:2 \
  --replicas=1 \
  --labels="ver=2,app=alpaca,env=test"

# create PROD deployment
kubectl run bandicoot-prod \
  --image=originalhat/kuard-amd64:2 \
  --replicas=2 \
  --labels="ver=2,app=bandicoot,env=prod"

# create STAGING deployment
kubectl run bandicoot-staging \
  --image=originalhat/kuard-amd64:2 \
  --replicas=1 \
  --labels="ver=2,app=bandicoot,env=staging"

kubectl get deployments --show-labels

