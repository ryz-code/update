#!/bin/bash
dateFromServer=$(curl -v --insecure --silent https://google.com/ 2>&1 | grep Date | sed -e 's/< Date: //')
biji=`date +"%Y-%m-%d" -d "$dateFromServer"`

echo "1;33m" > /etc/banner
echo "30m" > /etc/box
echo "1;33m" > /etc/line
echo "1;34m" > /etc/text
echo "1;36m" > /etc/below
echo "47m" > /etc/back
echo "1;37m" > /etc/number
echo 3d > /usr/bin/test
clear
echo -e "[INFO] Remove Old Script"
rm /usr/bin/menu
rm /etc/issue.net
sleep 2
echo -e " [INFO]nDownloading New Script"

# banner /etc/issue.net
wget -O /etc/issue.net "https://raw.githubusercontent.com/ryz-code/update/main/update-file/banner/bannerssh.conf"
echo "Banner /etc/issue.net" >>/etc/ssh/sshd_config
sed -i 's@DROPBEAR_BANNER=""@DROPBEAR_BANNER="/etc/issue.net"@g' /etc/default/dropbear

#Bannerku menu
wget -O /usr/bin/bannerku "https://raw.githubusercontent.com/ryz-code/update/main/update-file/bannerku" && chmod +x /usr/bin/bannerku
wget -O /usr/bin/menu "https://raw.githubusercontent.com/ryz-code/update/main/update-file/menu.sh" && chmod +x /usr/bin/menu
echo -e " [INFO] Update Successfully"
sleep 2
exit
