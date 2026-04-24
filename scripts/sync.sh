#!/bin/zsh

rsync -avz --delete --exclude "*.enc" server/. main@10.8.0.2:/home/main/config/
rsync -avz --delete --exclude "*.enc" --exclude "navidrome/data" --exclude "navidrome/music" gateway/. main@cloud.lxft.dev:/home/main/config
