#!/usr/bin/env bash
set -euo pipefail

BUCKET_NAME="${1:?Usage: $0 <bucket-name> <key-name>}"
KEY_NAME="${2:?Usage: $0 <bucket-name> <key-name>}"

docker exec garage /garage bucket create "$BUCKET_NAME"

KEY_OUTPUT=$(docker exec garage /garage key create "$KEY_NAME")
ACCESS_KEY_ID=$(echo "$KEY_OUTPUT" | grep "^Key ID:" | awk '{print $3}')
SECRET_KEY=$(echo "$KEY_OUTPUT" | grep "^Secret key:" | awk '{print $3}')

docker exec garage /garage bucket allow --read --write --owner "$BUCKET_NAME" --key "$ACCESS_KEY_ID"

echo "Bucket: $BUCKET_NAME"
echo "Access Key ID: $ACCESS_KEY_ID"
echo "Secret Key: $SECRET_KEY"
