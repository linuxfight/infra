#!/bin/zsh

rsync -avz --delete --exclude "*.enc" server/. main@192.168.1.152:/home/main/config/
rsync -avz --delete --exclude "*.enc" gateway/. main@cloud.lxft.dev:/home/main/config
