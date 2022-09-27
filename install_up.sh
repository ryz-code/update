#!/bin/bash
dateFromServer=$(curl -v --insecure --silent https://google.com/ 2>&1 | grep Date | sed -e 's/< Date: //')
biji=`date +"%Y-%m-%d" -d "$dateFromServer"`

echo -e "[INFO] Remove Old Script"
rm /usr/bin/menu
sleep 2
echo -e " [INFO] Downloading New Script"
wget -O /usr/bin/menu "https://raw.githubusercontent.com/ryz-code/update/main/update-file/menu.sh" && chmod +x /usr/bin/menu
wget https://raw.githubusercontent.com/ryz-code/update/main/update-file/lolcat.sh &&  chmod +x lolcat.sh && ./lolcat.sh
echo -e " [INFO] Update Successfully"
sleep 2
exit
