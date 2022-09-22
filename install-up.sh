#!/bin/bash
# ==========================================
# Color
# hapus menu
rm /usr/bin/menu
# download menu
wget -q -O /usr/bin/menu "https://raw.githubusercontent.com/ryz-code/update/main/update-file/menu.sh" && chmod +x /usr/bin/menu
#wget -O menu "https://raw.githubusercontent.com/ryz-code/nusantara-vpn/main/menu/menu.sh"
rm /root/install-up
