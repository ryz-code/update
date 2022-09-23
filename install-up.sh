#!/bin/bash
# ==========================================
# Color
# hapus menu
rm /usr/bin/menu

# Colour Default
echo "1;33m" > /etc/banner
echo "30m" > /etc/box
echo "1;33m" > /etc/line
echo "1;34m" > /etc/text
echo "1;36m" > /etc/below
echo "47m" > /etc/back
echo "1;37m" > /etc/number
echo 3d > /usr/bin/test

# download menu
wget -q -O /usr/bin/menu "https://raw.githubusercontent.com/ryz-code/update/main/update-file/menu.sh" && chmod +x /usr/bin/menu
#wget -O menu "https://raw.githubusercontent.com/ryz-code/nusantara-vpn/main/menu/menu.sh"
rm /root/install-up.sh
