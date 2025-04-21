#!/usr/bin/env bash
set -euo pipefail

WG_IF=wg0

# Tear down any existing wg0 so we can bring up cleanly
if ip link show "$WG_IF" &>/dev/null; then
  sudo wg-quick down "$WG_IF" 2>/dev/null || sudo ip link delete "$WG_IF"
fi

# Bring it up
sudo wg-quick up "$WG_IF" || { echo "❌ Failed to bring up $WG_IF"; exit 1; }

# Check for a recent handshake (<1 min ago)
last=$(sudo wg show wg0 latest-handshakes | awk '{print $2}')
if [[ -n "$last" && "$last" -ge $(($(date +%s)-60)) ]]; then
  echo "✅ WireGuard tunnel up (handshake $last seconds ago)"
  exit 0
else
  echo "⚠️  No recent handshake (last: $last)."
  exit 1
fi

