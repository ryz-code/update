#!/bin/bash
dateFromServer=$(curl -v --insecure --silent https://google.com/ 2>&1 | grep Date | sed -e 's/< Date: //')
biji=`date +"%Y-%m-%d" -d "$dateFromServer"`
###########- COLOR CODE -##############
echo -e " [INFO] Downloading Update File"
sleep 2
rm /usr/bin/menu

wget -qc -O /usr/bin/menu "https://raw.githubusercontent.com/ryz-code/update/main/update_file/menu.sh" && chmod +x /usr/bin/menu
echo -e " [INFO] Update Successfully"
sleep 2
exit
