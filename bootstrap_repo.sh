#!/usr/bin/env bash
set -euo pipefail

# Root of your repo: change this if you run the script from elsewhere
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# List of weeks to create
weeks=(week-0 week-1 week-2 week-3)

# Create the CKA structure
mkdir -p "$ROOT/cka"
for w in "${weeks[@]}"; do
  mkdir -p "$ROOT/cka/$w/docs"
  mkdir -p "$ROOT/cka/$w/scripts"
done

# Create global docs folder
mkdir -p "$ROOT/docs"

# Touch placeholder files
touch "$ROOT/cka/week-0/docs/course_notes.md"
touch "$ROOT/cka/week-0/docs/tmux_quickref.md"
touch "$ROOT/cka/week-1/docs/lesson1-notes.md"
touch "$ROOT/docs/cheat_sheet.md"

echo "Repo structure created under:"
echo "  $ROOT/cka/{${weeks[*]}}/{{docs,scripts}}"
echo "  $ROOT/docs/cheat_sheet.md"


