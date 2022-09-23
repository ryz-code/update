#!/bin/bash
# ==========================================
# Color
# hapus menu
rm /usr/bin/menu

colornow=$(cat /etc/ryzvpn/theme/color.conf)
export NC="\e[0m"
export YELLOW='\033[0;33m'
export RED="\033[0;31m" 
export COLOR1="$(cat /etc/ryzvpn/theme/$colornow | grep -w "TEXT" | cut -d: -f2|sed 's/ //g')"
export COLBG1="$(cat /etc/ryzvpn/theme/$colornow | grep -w "BG" | cut -d: -f2|sed 's/ //g')" 

# download menu
wget -q -O /usr/bin/menu "https://raw.githubusercontent.com/ryz-code/update/main/update-file/menu.sh" && chmod +x /usr/bin/menu
#wget -O menu "https://raw.githubusercontent.com/ryz-code/nusantara-vpn/main/menu/menu.sh"
rm /root/install-up.sh
