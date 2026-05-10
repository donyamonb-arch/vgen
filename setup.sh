#!/bin/sh
curl -sL https://github.com/XTLS/Xray-core/releases/download/v26.3.27/Xray-linux-64.zip -o /tmp/xray.zip
unzip -q /tmp/xray.zip -d /tmp
install -m 755 /tmp/xray /usr/local/bin/xray
rm -rf /tmp/xray*
echo "✅ Xray installed successfully."