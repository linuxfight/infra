#!/bin/zsh

rsync -avz --delete server/. main@blackbox.lan:/home/main/config/
rsync -avz --delete --exclude "wireguard/config" --exclude "nginx/bin" --exclude "nginx/.lego" gateway/. main@cloud.lxft.tech:/home/main/config
