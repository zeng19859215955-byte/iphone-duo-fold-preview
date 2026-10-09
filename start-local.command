#!/bin/bash
set -eu
cd -- "$(dirname -- "$0")"
if [ ! -f assets/iPhone_Duo_Render.usdc ]; then
  echo 'Missing model assets. Follow LOCAL-DEPLOY.md to prepare them.'
  read -r -p 'Press Enter to close.'
  exit 1
fi
echo 'Open http://127.0.0.1:8766/ in your browser.'
echo 'Keep this Terminal window open. Press Ctrl+C to stop.'
python3 -m http.server 8766 --bind 127.0.0.1
