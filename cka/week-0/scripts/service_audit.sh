#!/usr/bin/env bash
set -euo pipefail

if [[ ${1-} == "--help" ]]; then
  echo "Usage: $0"
  exit 0
fi

# Grab all enabled service unit-files
mapfile -t services < <(
  systemctl list-unit-files \
    --type=service \
    --state=enabled \
    --no-pager \
    --no-legend \
  | awk '{print $1}' \
  | grep -v '@\.'   # skip template units
)

for svc in "${services[@]}"; do
  # suppress stderr to avoid “Failed to retrieve” messages
  if ! systemctl is-active --quiet "$svc" 2>/dev/null; then
    printf "\e[31m⚠ %-40s not running\e[0m\n" "$svc"
  fi
done

