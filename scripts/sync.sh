#!/bin/zsh

rsync -avz --delete server/. main@10.8.0.3:/home/main/config/
rsync -avz --delete --exclude "wireguard/config" gateway/. main@cloud.lxft.dev:/home/main/config
