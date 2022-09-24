#!/bin/bash
dateFromServer=$(curl -v --insecure --silent https://google.com/ 2>&1 | grep Date | sed -e 's/< Date: //')
biji=`date +"%Y-%m-%d" -d "$dateFromServer"`
###########- COLOR CODE -##############
echo -e " [INFO] Downloading Update File"
rm /usr/bin/menu
sleep 2

wget -qc "https://raw.githubusercontent.com/ryz-code/update/main/update-file/menu.sh" && chmod +x menu.sh
echo -e " [INFO] Update Successfully"
sleep 2
exit
