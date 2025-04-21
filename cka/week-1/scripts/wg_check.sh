#!/usr/bin/env bash
set -euo pipefail

WG_IF="wg0"
PING_IP="10.10.10.2"

if ! ip link show "$WG_IF" &>/dev/null; then
  echo "⛔ $WG_IF not found. Did you install WireGuard?"
  exit 1
fi

if ! sudo wg show "$WG_IF" | grep -q "interface:"; then
  echo "⛔ $WG_IF exists but not configured."
  exit 1
fi

if ping -c1 -W2 "$PING_IP" &>/dev/null; then
  echo "✅ WireGuard tunnel up (reachable $PING_IP)."
else
  echo "⚠️  $PING_IP unreachable. Bringing interface up…"
  sudo systemctl restart wg-quick@"$WG_IF"
fi

