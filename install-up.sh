#!/bin/bash
# ==========================================
# Color
# hapus menu

# download menu
cd /usr/bin
rm -rf menu-backup
rm -rf menu-bot
rm -rf menu-ip
rm -rf menu-set
rm -rf menu-ss
rm -rf menu-ssh
rm -rf menu-tcp
rm -rf menu-theme
rm -rf menu-vless
rm -rf menu-vmess
wget -O menu-backup "https://raw.githubusercontent.com/ryz-code/nusantara-vpn/main/menu/menu-backup.sh"
wget -O menu-bot "https://raw.githubusercontent.com/ryz-code/nusantara-vpn/main/menu/menu-bot.sh"
wget -O menu-ip "https://raw.githubusercontent.com/ryz-code/nusantara-vpn/main/menu/menu-ip.sh"
wget -O menu-set "https://raw.githubusercontent.com/ryz-code/nusantara-vpn/main/menu/menu-set.sh"
wget -O menu-ss "https://raw.githubusercontent.com/ryz-code/nusantara-vpn/main/menu/menu-ss.sh"
wget -O menu-ssh "https://raw.githubusercontent.com/ryz-code/nusantara-vpn/main/menu/menu-ssh.sh"
wget -O menu-tcp "https://raw.githubusercontent.com/ryz-code/nusantara-vpn/main/menu/menu-tcp.sh"
wget -O menu-theme "https://raw.githubusercontent.com/ryz-code/nusantara-vpn/main/menu/menu-theme.sh"
wget -O menu-trojan "https://raw.githubusercontent.com/ryz-code/nusantara-vpn/main/menu/menu-trojan.sh"
wget -O menu-vless "https://raw.githubusercontent.com/ryz-code/nusantara-vpn/main/menu/menu-vless.sh"
wget -O menu-vmess "https://raw.githubusercontent.com/ryz-code/nusantara-vpn/main/menu/menu-vmess.sh"

chmod +x menu-backup
chmod +x menu-bandwith
chmod +x menu-bot
chmod +x menu-ip
chmod +x menu-set
chmod +x menu-ss
chmod +x menu-ssh
chmod +x menu-tcp
chmod +x menu-theme
chmod +x menu-vless
chmod +x menu-vmess
cd
