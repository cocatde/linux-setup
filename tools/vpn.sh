#!/usr/bin/env bash

if nmcli con show --active | grep -i tun; then
  echo "--- Try to disconnect VPN"
  sudo killall -SIGINT openconnect
  echo "--- Done"
else
  { printf '<vpn_pwd>\n'; sleep 1; printf "2\n"; } | sudo openconnect --background --protocol=gp <url> -u <username> --passwd-on-stdin
fi
