#!/bin/sh
set -e

echo "🔄 Installing Xray..."
RELEASE="https://github.com/XTLS/Xray-core/releases/download/v26.3.27/Xray-linux-64.zip"
TMPDIR="$(mktemp -d)"

curl -sL "$RELEASE" -o "$TMPDIR/xray.zip"
unzip -q "$TMPDIR/xray.zip" -d "$TMPDIR"
install -m 755 "$TMPDIR/xray" /usr/local/bin/xray

cp /tmp/config.json /etc/xray/config.json
chmod +x /tmp/show-link.sh

rm -rf "$TMPDIR"

echo "✅ Xray installed successfully."