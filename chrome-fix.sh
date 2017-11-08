#!/bin/ash

set -e

exec /usr/lib/chromium/chromium-launcher.sh --no-sandbox --user-data-dir --disable-gpu "$@"