#!/bin/zsh

set -e

LATEST_VERSION=$(curl -s https://api.github.com/repos/go-acme/lego/releases/latest | grep '"tag_name":' | sed -E 's/.*"v([^"]+)".*/\1/')

if [ -z "$LATEST_VERSION" ]; then
    echo "Could not determine latest version"
    exit 1
fi

cd bin
curl "https://github.com/go-acme/lego/releases/download/v${LATEST_VERSION}/lego_v${LATEST_VERSION}_linux_amd64.tar.gz" -Lo latest.tar.gz
tar -xvzf latest.tar.gz
rm latest.tar.gz
cd ..
