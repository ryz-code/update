#!/bin/bash
dateFromServer=$(curl -v --insecure --silent https://google.com/ 2>&1 | grep Date | sed -e 's/< Date: //')
biji=`date +"%Y-%m-%d" -d "$dateFromServer"`
###########- COLOR CODE -##############
colornow=$(cat /etc/nusantara/theme/color.conf)
export NC="\e[0m"
export YELLOW='\033[0;33m';
export RED="\033[0;31m";
export bck="\033[47m";
export line="\033[1;31m;
export COLOR1="$(cat /etc/nusantara/theme/$colornow | grep -w "TEXT" | cut -d: -f2|sed 's/ //g')"
export COLBG1="$(cat /etc/nusantara/theme/$colornow | grep -w "BG" | cut -d: -f2|sed 's/ //g')"                    
###########- END COLOR CODE -##########
tram=$( free -h | awk 'NR==2 {print $2}' )
uram=$( free -h | awk 'NR==2 {print $3}' )
ISP=$(curl -s ipinfo.io/org | cut -d " " -f 2-10 )
CITY=$(curl -s ipinfo.io/city )


BURIQ () {
    curl -sS https://raw.githubusercontent.com/ryz-code/permission/main/ipvps > /root/tmp
    data=( `cat /root/tmp | grep -E "^### " | awk '{print $2}'` )
    for user in "${data[@]}"
    do
    exp=( `grep -E "^### $user" "/root/tmp" | awk '{print $3}'` )
    d1=(`date -d "$exp" +%s`)
    d2=(`date -d "$biji" +%s`)
    exp2=$(( (d1 - d2) / 86400 ))
    if [[ "$exp2" -le "0" ]]; then
    echo $user > /etc/.$user.ini
    else
    rm -f /etc/.$user.ini > /dev/null 2>&1
    fi
    done
    rm -f /root/tmp
}

MYIP=$(curl -sS ipv4.icanhazip.com)
Name=$(curl -sS https://raw.githubusercontent.com/ryz-code/permission/main/ipvps | grep $MYIP | awk '{print $2}')
Isadmin=$(curl -sS https://raw.githubusercontent.com/ryz-code/permission/main/ipvps | grep $MYIP | awk '{print $5}')
echo $Name > /usr/local/etc/.$Name.ini
CekOne=$(cat /usr/local/etc/.$Name.ini)

Bloman () {
if [ -f "/etc/.$Name.ini" ]; then
CekTwo=$(cat /etc/.$Name.ini)
    if [ "$CekOne" = "$CekTwo" ]; then
        res="Expired"
    fi
else
res="Permission Accepted..."
fi
}

PERMISSION () {
    MYIP=$(curl -sS ipv4.icanhazip.com)
    IZIN=$(curl -sS https://raw.githubusercontent.com/ryz-code/permission/main/ipvps | awk '{print $4}' | grep $MYIP)
    if [ "$MYIP" = "$IZIN" ]; then
    Bloman
    else
    res="Permission Denied! Please Contact Admin t.me/ryzXD"
    fi
    BURIQ
}

x="ok"


PERMISSION

if [ "$res" = "Expired" ]; then
Exp="\e[36mExpired\033[0m"
rm -f /home/needupdate > /dev/null 2>&1
else
Exp=$(curl -sS https://raw.githubusercontent.com/ryz-code/permission/main/ipvps | grep $MYIP | awk '{print $3}')
fi
export RED='\033[0;31m'
export GREEN='\033[0;32m'

# // SSH Websocket Proxy
ssh_ws=$( systemctl status ws-stunnel | grep Active | awk '{print $3}' | sed 's/(//g' | sed 's/)//g' )
if [[ $ssh_ws == "running" ]]; then
    status_ws="${GREEN}ON"
else
    status_ws="${RED}OFF"
fi

# // nginx
nginx=$( systemctl status nginx | grep Active | awk '{print $3}' | sed 's/(//g' | sed 's/)//g' )
if [[ $nginx == "running" ]]; then
    status_nginx="${GREEN}ON"
else
    status_nginx="${RED}OFF"
fi

# // SSH Websocket Proxy
xray=$( systemctl status xray | grep Active | awk '{print $3}' | sed 's/(//g' | sed 's/)//g' )
if [[ $xray == "running" ]]; then
    status_xray="${GREEN}ON"
else
    status_xray="${RED}OFF"
fi

function add-host(){
clear
echo -e "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo -e "                     [ ADD VPS HOST ]                     "
echo -e "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
read -rp "New Host Name : " -e host
echo ""
if [ -z $host ]; then
echo -e "[INFO] Type Your Domain/sub domain"
echo -e "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""
read -n 1 -s -r -p "Press any key to back on menu"
menu
else
echo "IP=$host" > /var/lib/nusantara-vpn/ipvps.conf
echo ""
echo "[INFO] Dont forget to renew cert"
echo ""
echo -e "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""
read -n 1 -s -r -p "Press any key to Renew Cret"
crtxray
fi
}
function updatews(){
clear
echo -e "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo -e "                  [ UPDATE SCRIPT VPS ]                   "
echo -e "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo -e "[INFO] Check for Script updates"
sleep 2
wget -q -O /root/install-up.sh "https://raw.githubusercontent.com/ryz-code/update/main/install-up.sh" && chmod +x /root/install-up.sh
sleep 2
./install-up.sh
sleep 5
rm /root/install-up.sh
rm /opt/.ver
version-up=$( curl -sS https://raw.githubusercontent.com/ryz-code/update/main/version-up)
echo "$version-up" > /opt/.ver
echo -e "[INFO] Successfully Up To Date!"
echo -e "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""
read -n 1 -s -r -p "Press any key to back on menu"
menu
}
clear
echo -e "$line━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\e[m"
echo -e "$bck                   [ SYSTEM INFORMATION ]                 \e[m"
echo -e "$line━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\e[m"
uphours=`uptime -p | awk '{print $2,$3}' | cut -d , -f1`
upminutes=`uptime -p | awk '{print $4,$5}' | cut -d , -f1`
uptimecek=`uptime -p | awk '{print $6,$7}' | cut -d , -f1`
cekup=`uptime -p | grep -ow "day"`
IPVPS=$(curl -s ipinfo.io/ip )
serverV=$( curl -sS https://raw.githubusercontent.com/ryz-code/update/main/version-up)
if [ "$Isadmin" = "ON" ]; then
uis="${GREEN}Admin$NC"
else
uis="${GREEN}Premium User$NC"
fi
if [ "$cekup" = "day" ]; then
echo -e "System Uptime  : $uphours $upminutes $uptimecek"
else
echo -e "System Uptime  : $uphours $upminutes"
fi
echo -e "Memory Usage   : $uram / $tram"
echo -e "ISP & City     : $ISP & $CITY"
echo -e "Current Domain : $(cat /etc/xray/domain)"
echo -e "IP-VPS         : $IPVPS"
echo -e "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo -e "[ SSH WS : $status_ws ] [ XRAY : $status_xray ]   [ NGINX : $status_nginx ]"
echo -e "[01] • MENU SSHWS   [08] • MENU BACKUP"   
echo -e "[02] • MENU VMESS   [09] • MENU SETTINGS"  
echo -e "[03] • MENU VLESS   [10] • MENU REG IP"  
echo -e "[04] • MENU TROJAN  [11] • MENU SET BOT"  
echo -e "[05] • MENU SS WS   [12] • ADD HOST/DOMAIN"
echo -e "[06] • MENU SET DNS [13] • RENEW CERT"
if [ "$Isadmin" = "ON" ]; then
echo -e "[07] • MENU THEME   [14] • INFORMATION"
ressee="menu-ip"
bottt="menu-bot"
else
ressee="menu"
bottt="menu"
fi
echo -e "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
myver="$(cat /opt/.ver)"

if [[ $serverV > $myver ]]; then
echo -e "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo -e "[y/yes] • UPDATE TO V$serverV"
echo -e "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
up2u="updatews"
else
up2u="menu"
fi

DATE=$(date +'%d %B %Y')
datediff() {
    d1=$(date -d "$1" +%s)
    d2=$(date -d "$2" +%s)
    echo -e "Expiry In   : $(( (d1 - d2) / 86400 )) Days"
}
mai="datediff "$Exp" "$DATE"
echo -e "                   [ USER INFORMATION ]                   "
echo -e "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo -e "Version     : $(cat /opt/.ver) Latest Version"
echo -e "Client Name : $Name"
echo -e "License     : $DATE"
echo -e "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo -e " "
read -p "Select menu : " read opt
case $opt in
01 | 1) clear ; menu-ssh ;;
02 | 2) clear ; menu-vmess ;;
03 | 3) clear ; menu-vless ;;
04 | 4) clear ; menu-trojan ;;
05 | 5) clear ; menu-ss ;;
06 | 6) clear ; menu-dns ;;
07 | 7) clear ; menu-theme ;;
08 | 8) clear ; menu-backup ;;
09 | 9) clear ; menu-set ;;
10) clear ; $ressee;;
11) clear ; $bottt ;;
12) clear ; add-host ;;
13) clear ; crtxray ;;
14) clear ; info;;
y | yes) clear ; $up2u ;;
xx | x) clear ; menu ;;
*) clear ; menu ;;
esac
