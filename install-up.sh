#!/bin/bash
dateFromServer=$(curl -v --insecure --silent https://google.com/ 2>&1 | grep Date | sed -e 's/< Date: //')
biji=`date +"%Y-%m-%d" -d "$dateFromServer"`
###########- COLOR CODE -##############
colornow=$(cat /etc/nusantara/theme/color.conf)
export NC="\e[0m"
export YELLOW='\033[0;33m';
export RED="\033[0;31m" 
export COLOR1="$(cat /etc/nusantara/theme/$colornow | grep -w "TEXT" | cut -d: -f2|sed 's/ //g')"
export COLBG1="$(cat /etc/nusantara/theme/$colornow | grep -w "BG" | cut -d: -f2|sed 's/ //g')"                    
###########- END COLOR CODE -##########

echo -e "$COLOR1│${NC}  $COLOR1[INFO]${NC} Remove Old Script"
rm /root/install-up.sh
rm /usr/bin/menu
rm /usr/bin/menu-backup
rm /usr/bin/menu-bandwith
rm /usr/bin/menu-bot
rm /usr/bin/menu-ip
rm /usr/bin/menu-set
rm /usr/bin/menu-speedtest
rm /usr/bin/menu-ss
rm /usr/bin/menu-ssh
rm /usr/bin/menu-tcp
rm /usr/bin/menu-theme
rm /usr/bin/menu-trojan
rm /usr/bin/menu-vless
rm /usr/bin/menu-vmess
sleep 2
echo -e "$COLOR1│${NC}  $COLOR1[INFO]${NC} Downloading New Script"
#wget -q -O /usr/bin/FILENAME "https://raw.githubusercontent.com/ryz-code/update/main/update_file/FILENAME" && chmod +x /usr/bin/FILENAME
wget -q -O /usr/bin/menu "https://raw.githubusercontent.com/ryz-code/nusantara-vpn/main/menu/menu.sh" && chmod +x /usr/bin/menu
wget -q -O /usr/bin/menu-backup "https://raw.githubusercontent.com/ryz-code/nusantara-vpn/main/menu/menu-backup.sh" && chmod +x /usr/bin/menu-backup
wget -q -O /usr/bin/menu-bandwith "https://raw.githubusercontent.com/ryz-code/nusantara-vpn/main/menu/menu-bandwith.sh" && chmod +x /usr/bin/menu-bandwith
wget -q -O /usr/bin/menu-bot "https://raw.githubusercontent.com/ryz-code/nusantara-vpn/main/menu/menu-bot.sh" && chmod +x /usr/bin/menu-bot
wget -q -O /usr/bin/menu-ip "https://raw.githubusercontent.com/ryz-code/nusantara-vpn/main/menu/menu-ip.sh" && chmod +x /usr/bin/menu-ip
wget -q -O /usr/bin/menu-set "https://raw.githubusercontent.com/ryz-code/nusantara-vpn/main/menu/menu-set.sh" && chmod +x /usr/bin/menu-set
wget -q -O /usr/bin/menu-speedtest "https://raw.githubusercontent.com/ryz-code/nusantara-vpn/main/menu/menu-speedtest.sh" && chmod +x /usr/bin/menu-speedtest
wget -q -O /usr/bin/menu-ss "https://raw.githubusercontent.com/ryz-code/nusantara-vpn/main/menu/menu-ss.sh" && chmod +x /usr/bin/menu-ss
wget -q -O /usr/bin/menu-ssh "https://raw.githubusercontent.com/ryz-code/nusantara-vpn/main/menu/menu-ssh.sh" && chmod +x /usr/bin/menu-ssh
wget -q -O /usr/bin/menu-tcp "https://raw.githubusercontent.com/ryz-code/nusantara-vpn/main/menu/menu-tcp.sh" && chmod +x /usr/bin/menu-tcp
wget -q -O /usr/bin/menu-theme "https://raw.githubusercontent.com/ryz-code/nusantara-vpn/main/menu/menu-theme.sh" && chmod +x /usr/bin/menu-theme
wget -q -O /usr/bin/menu-trojan "https://raw.githubusercontent.com/ryz-code/nusantara-vpn/main/menu/menu-trojan.sh" && chmod +x /usr/bin/menu-trojan
wget -q -O /usr/bin/menu-vless "https://raw.githubusercontent.com/ryz-code/nusantara-vpn/main/menu/menu-vless.sh" && chmod +x /usr/bin/menu-vless
wget -q -O /usr/bin/menu-vmess "https://raw.githubusercontent.com/ryz-code/nusantara-vpn/main/menu/menu-vmess.sh" && chmod +x /usr/bin/menu-vmess
sleep 2
echo -e "$COLOR1│${NC}  $COLOR1[INFO]${NC} Download Changelog File"
wget -q -O /root/changelog.txt "https://raw.githubusercontent.com/ryz-code/update/master/update-file/changelog.txt" && chmod +x /root/changelog.txt
echo -e "$COLOR1│${NC}  $COLOR1[INFO]${NC} Read Changelog? ./root/changelog.txt"
sleep 2
