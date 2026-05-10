#!/bin/bash

UUID="8f8f8f8f-8f8f-8f8f-8f8f-8f8f8f8f8f8f"
DOMAIN="${CODESPACE_NAME}-443.app.github.dev"

LINK="vless://${UUID}@${DOMAIN}:443?security=tls&sni=${DOMAIN}&type=xhttp&mode=packet-up&encryption=none#codespace-proxy"

echo -e "\n"
echo -e "\033[1;36m══════════════════════════════════════════════\033[0m"
echo -e "\033[1;32m✅ Your VLESS Connection is Ready!\033[0m"
echo -e "\033[1;36m══════════════════════════════════════════════\033[0m"
echo -e "\033[1;33m🔗 Connection Link:\033[0m"
echo -e "\033[1;37m${LINK}\033[0m"
echo -e "\n"
echo -e "\033[1;32m📋 Just click and copy the link above.\033[0m"
echo -e "\033[1;34m💡 Tip: Stop Codespace when not in use to save quota.\033[0m"
echo -e "\n"