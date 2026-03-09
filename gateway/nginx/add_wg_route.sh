#!/bin/sh
set -e

# Try to resolve wireguard container IP
WG_IP=$(ping -c 1 wireguard 2>/dev/null | grep -m 1 PING | grep -oE '[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+' | head -n 1)

if [ -n "$WG_IP" ]; then
    echo "Adding route to Wireguard subnet (10.8.0.0/24) via $WG_IP..."
    ip route add 10.8.0.0/24 via "$WG_IP" || echo "Route might already exist"
else
    echo "Warning: Could not resolve 'wireguard' container IP. Route not added."
fi
