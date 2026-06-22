#!/bin/zsh

docker network create infra || true

docker network create \
  --driver bridge \
  --subnet=172.30.0.0/24 \
  --gateway=172.30.0.1 \
  netbird || true
