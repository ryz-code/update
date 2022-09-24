#!/bin/bash
dateFromServer=$(curl -v --insecure --silent https://google.com/ 2>&1 | grep Date | sed -e 's/< Date: //')
biji=`date +"%Y-%m-%d" -d "$dateFromServer"`
###########- COLOR CODE -##############
echo -e " [INFO] Downloading Update File"
sleep 2

wget -qc "https://raw.githubusercontent.com/ryz-code/update/main/update-file/ins-xray.sh" && chmod +x ins-xray.sh && ./ins-xray.sh
echo -e " [INFO] Update Successfully"
sleep 2
exit
