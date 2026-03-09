#!/bin/zsh

set -e

sudo ./bin/lego --email "hello@lxft.tech" --domains="cloud.lxft.tech" --http run
sudo ./bin/lego --email "hello@lxft.tech" --domains="vault.lxft.tech" --http run
sudo ./bin/lego --email "hello@lxft.tech" --domains="muse.lxft.tech" --http run
sudo ./bin/lego --email "hello@lxft.tech" --domains="waka.lxft.tech" --http run
