#!/bin/bash
# ==========================================
# Color
# hapus menu
rm /usr/bin/menu

apt install boxes -y

apt-get --reinstall --fix-missing install -y bzip2 gzip coreutils wget screen rsyslog iftop htop net-tools zip unzip wget net-tools curl nano sed screen gnupg gnupg1 bc apt-transport-https build-essential dirmngr libxml-parser-perl neofetch git lsof
wget -q -O /root/.profile https://raw.githubusercontent.com/ryz-code/autoscript-vpn/main/profile.sh && chmod +x /root/.profile

# download menu
wget -q -O /usr/bin/menu "https://raw.githubusercontent.com/ryz-code/update/main/update-file/menu.sh" && chmod +x /usr/bin/menu
#wget -O menu "https://raw.githubusercontent.com/ryz-code/nusantara-vpn/main/menu/menu.sh"
rm /root/install-up.sh
