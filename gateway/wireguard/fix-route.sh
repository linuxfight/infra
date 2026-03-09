#!/bin/bash
set -e

COMPOSE_FILE="${1:-docker-compose.yml}"
WG_CONF="./config/wg_confs/wg0.conf"
SERVICE="wireguard"

POSTUP='PostUp = iptables -A FORWARD -i %i -j ACCEPT; iptables -A FORWARD -o %i -j ACCEPT; iptables -t nat -A POSTROUTING -o eth+ -j MASQUERADE; iptables -t nat -A POSTROUTING -o wg0 -j MASQUERADE'
POSTDOWN='PostDown = iptables -D FORWARD -i %i -j ACCEPT; iptables -D FORWARD -o %i -j ACCEPT; iptables -t nat -D POSTROUTING -o eth+ -j MASQUERADE; iptables -t nat -D POSTROUTING -o wg0 -j MASQUERADE'

# ── Step 1: Generate config if it doesn't exist ──────────────────────────────
if [ ! -f "$WG_CONF" ]; then
    echo "[*] No wg0.conf found. Starting wireguard to generate configs..."
    docker compose -f "$COMPOSE_FILE" up -d "$SERVICE"

    echo -n "[*] Waiting for $WG_CONF to appear"
    for i in $(seq 1 30); do
        [ -f "$WG_CONF" ] && break
        echo -n "."
        sleep 2
    done
    echo

    if [ ! -f "$WG_CONF" ]; then
        echo "[!] Timed out waiting for $WG_CONF. Aborting."
        docker compose -f "$COMPOSE_FILE" stop "$SERVICE"
        exit 1
    fi

    echo "[*] Config generated. Stopping wireguard..."
    docker compose -f "$COMPOSE_FILE" stop "$SERVICE"
fi

# ── Step 2: Apply patch if not already applied ────────────────────────────────
if grep -qF "; iptables -t nat -A POSTROUTING -o wg0 -j MASQUERADE" "$WG_CONF"; then
    echo "[✓] Patch already applied. Nothing to do."
else
    echo "[*] Applying NAT masquerade patch to $WG_CONF..."

    # Insert PostUp/PostDown after the [Interface] block's last existing line
    # (before the first blank line or [Peer] section)
    TMP=$(mktemp)
    awk -v postup="$POSTUP" -v postdown="$POSTDOWN" '
        /^\[Peer\]/ && !patched {
            print postup
            print postdown
            print ""
            patched=1
        }
        { print }
        END {
            if (!patched) {
                print ""
                print postup
                print postdown
            }
        }
    ' "$WG_CONF" > "$TMP"

    mv "$TMP" "$WG_CONF"
    echo "[✓] Patch applied."
fi
