#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")"

if ! command -v stow >/dev/null 2>&1; then
  echo "GNU stow is required. Install it, then run: stow nvim tmux" >&2
  exit 1
fi

stow nvim tmux
