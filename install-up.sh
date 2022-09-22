#!/bin/bash
# ==========================================
# Color
# hapus menu
rm -rf menu
# download menu
cd /usr/bin
rm -rf menu
wget -O menu "https://raw.githubusercontent.com/ryz-code/nusantara-vpn/main/menu/menu.sh"

chmod +x menu
cd
