#!/bin/bash
# ==========================================
# Color
echo ""
clear
echo -e "\e[0;32mPlease Wait...!\e[0m"
sleep 6
clear
echo ""
echo -e "\e[0;32mNew Version Downloading started!\e[0m"
sleep 2
cd /usr/bin
#wget -O update "https://raw.githubusercontent.com/ryz-code/autoscript-vpn/main/update/menu.sh"
wget -O message-ssh "https://raw.githubusercontent.com/ryz-code/autoscript-vpn/main/update/menu-vmess.sh"
#wget -O bannermenu "https://raw.githubusercontent.com/ryz-code/autoscript-vpn/main/update/bannermenu.sh"
#wget -O change-port "https://raw.githubusercontent.com/ryz-code/autoscript-vpn/main/change.sh"
#wget -O add-ws "https://raw.githubusercontent.com/ryz-code/autoscript-vpn/main/add-user/add-ws.sh"
chmod +x menu-vmess
#chmod +x bannermenu
#chmod +x change-port
#chmod +x add-ws
#chmod +x message-ssh
clear
echo -e ""
echo -e "\e[0;32mDownloaded successfully!\e[0m"
echo ""
ver=$( curl https://raw.githubusercontent.com/ryz-code/update/main/version_up )
sleep 1
echo -e "\e[0;32mPatching New Update, Please Wait...\e[0m"
echo ""
sleep 2
echo -e "\e[0;32mPatching... OK!\e[0m"
sleep 1
echo ""
echo -e "\e[0;32mSucces Update Script For New Version\e[0m"
cd
echo "$ver" > /opt/.ver
echo ""
echo -e " \e[1;31mReboot 5 Sec\e[0m"
sleep 5
rm -f update.sh
reboot

# download menu
#wget -q -O /usr/bin/menu "https://raw.githubusercontent.com/ryz-code/update/main/update-file/menu.sh" && chmod +x /usr/bin/menu
#wget -O menu "https://raw.githubusercontent.com/ryz-code/nusantara-vpn/main/menu/menu.sh"
rm /root/install-up.sh
