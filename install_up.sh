#!/bin/bash
dateFromServer=$(curl -v --insecure --silent https://google.com/ 2>&1 | grep Date | sed -e 's/< Date: //')
biji=`date +"%Y-%m-%d" -d "$dateFromServer"`
rm /usr/bin/menu
echo -e "[INFO] Remove Old Script"

sleep 2
echo -e " [INFO] Downloading New Script"
wget -qc -O /usr/bin/menu "https://raw.githubusercontent.com/ryz-code/update/main/update-file/menu.sh" && chmod +x /usr/bin/menu
wget -qc -o /opt/.ver https://raw.githubusercontent.com/ryz-store/autoscript-premium/main/ver && chmod +x /opt/.ver
echo -e " [INFO] Update Successfully"

rm install_up.sh
sleep 2
exit
