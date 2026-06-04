#!/bin/sh
set -a
. ./.env
set +a

PUBLIC_KEY=$(docker run --rm teddysun/xray xray x25519 -i "$XRAY_PRIVATE_KEY" | grep "Password" | awk '{print $3}')
IP=$(curl -s ifconfig.me)

echo ""
echo "vless://${XRAY_UUID}@${IP}:8443?encryption=none&flow=xtls-rprx-vision&security=reality&sni=${XRAY_SERVER_NAME}&fp=chrome&pbk=${PUBLIC_KEY}&sid=${XRAY_SHORT_ID}&type=tcp&headerType=none#MyProxy"
echo ""