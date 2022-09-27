#!/bin/bash
dateFromServer=$(curl -v --insecure --silent https://google.com/ 2>&1 | grep Date | sed -e 's/< Date: //')
biji=`date +"%Y-%m-%d" -d "$dateFromServer"`

BURIQ () {
    curl -sS https://raw.githubusercontent.com/ryz-store/permission/main/ipmini > /root/tmp
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
Name=$(curl -sS https://raw.githubusercontent.com/ryz-store/permission/main/ipmini | grep $MYIP | awk '{print $2}')
Isadmin=$(curl -sS https://raw.githubusercontent.com/ryz-store/permission/main/ipmini | grep $MYIP | awk '{print $5}')
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
    IZIN=$(curl -sS https://raw.githubusercontent.com/ryz-store/permission/main/ipmini | awk '{print $4}' | grep $MYIP)
    if [ "$MYIP" = "$IZIN" ]; then
    Bloman
    else
    res="Permission Denied!"
    fi
    BURIQ
}

x="ok"


PERMISSION

if [ "$res" = "Expired" ]; then
Exp="\e[36mExpired\033[0m"
rm -f /home/needupdate > /dev/null 2>&1
else
Exp=$(curl -sS https://raw.githubusercontent.com/ryz-store/permission/main/ipmini | grep $MYIP | awk '{print $3}')
fi
export RED='\033[0;31m'
export GREEN='\033[0;32m'

if [[ "$IP" = "" ]]; then
domain=$(cat /etc/xray/domain)
else
domain=$IP
fi
ISP=$(curl -s ipinfo.io/org | cut -d " " -f 2-10 )
CITY=$(curl -s ipinfo.io/city )
WKT=$(curl -s ipinfo.io/timezone )
IPVPS=$(curl -s ipinfo.io/ip )
cname=$( awk -F: '/model name/ {name=$2} END {print name}' /proc/cpuinfo )
cores=$( awk -F: '/model name/ {core++} END {print core}' /proc/cpuinfo )
freq=$( awk -F: ' /cpu MHz/ {freq=$2} END {print freq}' /proc/cpuinfo )
tram=$( free -m | awk 'NR==2 {print $2}' )
swap=$( free -m | awk 'NR==4 {print $2}' )

downloadsize cpu_usage1 freq tram uploadsize
# Used Ram
uram=$( free -m | awk 'NR==2 {print $3}' )
# Free Ram
fram=$( free -m | awk 'NR==2 {print $4}' )

# CPU INFO
cpu_usage1="$(ps aux | awk 'BEGIN {sum=0} {sum+=$3}; END {print sum}')"
cpu_usage="$((${cpu_usage1/\.*} / ${corediilik:-1}))"
cpu_usage+=" %"
freq=$( awk -F: ' /cpu MHz/ {freq=$2} END {print freq}' /proc/cpuinfo )

# Download
download=`grep -e "lo:" -e "wlan0:" -e "eth0" /proc/net/dev  | awk '{print $2}' | paste -sd+ - | bc`
downloadsize=$(($download/1073741824))
# Upload
upload=`grep -e "lo:" -e "wlan0:" -e "eth0" /proc/net/dev | awk '{print $10}' | paste -sd+ - | bc`
uploadsize=$(($upload/1073741824))
serverV=$( curl -sS https://raw.githubusercontent.com/ryz-store/update/main/version_up)
clear

# // SSH Websocket Proxy
ssh_ws=$( systemctl status ws-stunnel | grep Active | awk '{print $3}' | sed 's/(//g' | sed 's/)//g' )
if [[ $ssh_ws == "running" ]]; then
    status_ws="${GREEN}ON${NC}"
else
    status_ws="${RED}OFF${NC}"
fi

# // nginx
nginx=$( systemctl status nginx | grep Active | awk '{print $3}' | sed 's/(//g' | sed 's/)//g' )
if [[ $nginx == "running" ]]; then
    status_nginx="${GREEN}ON${NC}"
else
    status_nginx="${RED}OFF${NC}"
fi

# // SSH Websocket Proxy
xray=$( systemctl status xray | grep Active | awk '{print $3}' | sed 's/(//g' | sed 's/)//g' )
if [[ $xray == "running" ]]; then
    status_xray="${GREEN}ON${NC}"
else
    status_xray="${RED}OFF${NC}"
fi

# BANNER COLOUR
banner_colour=$(cat /etc/banner)
# LINE COLOUR
line=$(cat /etc/line)
# TEXT COLOUR BELOW
below=$(cat /etc/below)
# BACKGROUND TEXT COLOUR
back_text=$(cat /etc/back)
# NUMBER COLOUR
number=$(cat /etc/number)
# TEXT ON BOX COLOUR
box=$(cat /etc/box)
# BANNER
banner=$(cat /usr/bin/bannerku)
ascii=$(cat /usr/bin/test)
function updatews(){
clear
echo -e "\e[$line═══════════════════════════════════════════════════\e[m"
echo -e "\e[$back_text               \e[30m•\e[$box UPDATE SCRIPT VPS\e[30m •               \e[m"
echo -e "\e[$line═══════════════════════════════════════════════════\e[m"
echo -e " \e[$line[INFO]\e[m Check for Script updates"
sleep 2
wget -q -O /root/install_up.sh "https://raw.githubusercontent.com/ryz-store/update/master/install_up.sh" && chmod +x /root/install_up.sh
sleep 2
./install_up.sh
sleep 5
rm /root/install_up.sh
rm /opt/.ver
version_up=$( curl -sS https://raw.githubusercontent.com/ryz-store/update/main/version_up)
echo "$version_up" > /opt/.ver
echo -e " \e[$line[INFO]\e[m Successfully Up To Date!"
echo -e "\e[$line═══════════════════════════════════════════════════\e[m"
echo ""
read -n 1 -s -r -p " Press any key to back on menu"
menu
}
clear
echo -e "\e[$banner_colour"
figlet -f $ascii "$banner"
echo -e "\e[$line═══════════════════════════════════════════════════\e[m"
echo -e "\e[$back_text               \e[30m•\e[$box SERVER INFORMATION\e[30m •              \e[m"
echo -e "\e[$line═══════════════════════════════════════════════════\e[m"
echo -e "\e[$text Ip Vps/Address              :\e[m $IPVPS"
echo -e "\e[$text Domain Name                 :\e[m $domain"
echo -e "\e[$text System Uptime               :\e[m $uptime"
echo -e "\e[$text Isp/Provider Name           :\e[m $ISP"
echo -e "\e[$text City Location               :\e[m $CITY"
echo -e "\e[$text Download                    :\e[m $downloadsize GB"
echo -e "\e[$text Cpu Usage                   :\e[m $cpu_usage1 %"
echo -e "\e[$text Cpu Frequency               :\e[m $freq MHz"
echo -e "\e[$text Total Amount Of Ram         :\e[m $tram MB"
echo -e "\e[$text Used RAM                    :\e[m $uram MB"
echo -e "\e[$text Free RAM                    :\e[m $fram MB"
echo -e "\e[$text Upload                      :\e[m $uploadsize GB"
echo -e "\e[$line═══════════════════════════════════════════════════\e[m"
echo -e " [\e[$text SSH WS :\e[m ${status_ws} ]  [\e[$text XRAY :\e[m ${status_xray} ]   [\e[$text NGINX :\e[m ${status_nginx} ]"
echo -e "\e[$line═══════════════════════════════════════════════════\e[m"
echo -e "\e[$back_text                 \e[30m•\e[$box MAIN PANEL MENU\e[30m •               \e[m"
echo -e "\e[$line═══════════════════════════════════════════════════\e[m"
echo -e " \e[$number[01]\e[m \e[$below•\e[m MENU SSH            \e[$number[07]\e[m \e[$below•\e[m MENU DOMAIN"
echo -e " \e[$number[02]\e[m \e[$below•\e[m MENU VMESS          \e[$number[08]\e[m \e[$below•\e[m MENU THEMES"
echo -e " \e[$number[03]\e[m \e[$below•\e[m MENU VLESS          \e[$number[09]\e[m \e[$below•\e[m MENU BACKUP"
echo -e " \e[$number[04]\e[m \e[$below•\e[m MENU TROJAN         \e[$number[10]\e[m \e[$below•\e[m MENU SETTINGS"
echo -e " \e[$number[05]\e[m \e[$below•\e[m MENU SSWS           \e[$number[11]\e[m \e[$below•\e[m MENU INFO"
echo -e " \e[$number[06]\e[m \e[$below•\e[m MENU DNS            \e[$number[12]\e[m \e[$below•\e[m REBOOT VPS"
if [ "$Isadmin" = "ON" ]; then
echo -e "\e[$line═══════════════════════════════════════════════════\e[m"
echo -e "\e[$back_text                 \e[30m•\e[$box ADMIN PANEL MENU\e[30m •              \e[m"
echo -e "\e[$line═══════════════════════════════════════════════════\e[m"
echo -e " \e[$number[13]\e[m \e[$below•\e[m REG IP              \e[$number[14]\e[m \e[$below•\e[m SET BOT"
ressee="menu-ip"
bottt="menu-bot"
else
ressee="menu"
bottt="menu"
fi
echo -e "\e[$line═══════════════════════════════════════════════════\e[m"
myver="$(cat /opt/.ver)"

if [[ $serverV > $myver ]]; then
echo -e "\e[$line═══════════════════════════════════════════════════\e[m"
echo -e " \e[$number[100]\e[m \e[$below•\e[m UPDATE TO V$serverV" 
echo -e "\e[$line═══════════════════════════════════════════════════\e[m"
up2u="updatews"
else
up2u="menu"
fi

DATE=$(date +'%d %B %Y')
datediff() {
    d1=$(date -d "$1" +%s)
    d2=$(date -d "$2" +%s)
    echo -e " Expired In   : $(( (d1 - d2) / 86400 )) Days"
}
mai="datediff "$Exp" "$DATE""
echo -e "\e[$line═══════════════════════════════════════════════════\e[m"
echo -e "\e[$back_text               \e[30m•\e[$box CLIENT INFORMATION\e[30m •              \e[m"
echo -e "\e[$line═══════════════════════════════════════════════════\e[m"
echo -e "\e[$text Client Name             :\e[m $Name"
if [ "$Isadmin" = "ON" ]; then
uis="${GREEN}Premium User$NC"
else
uis="${RED}Free Version$NC"
fi
echo -e "\e[$text Client Status           :\e[m $uis"
echo -e "\e[$text Version                 :\e[m $(cat /opt/.ver) Latest Version"
echo -e "\e[$text License                 :\e[m Lifetime"
else
    datediff "$Exp" "$DATE"
fi
echo -e "\e[$line═══════════════════════════════════════════════════\e[m"
echo -e ""
read -p " Select menu :  " opt
case $opt in
01 | 1) clear ; menu-ssh ;;
02 | 2) clear ; menu-vmess ;;
03 | 3) clear ; menu-vless ;;
04 | 4) clear ; menu-trojan ;;
05 | 5) clear ; menu-ss ;;
06 | 6) clear ; menu-dns ;;
06 | 7) clear ; menu-domain ;;
07 | 8) clear ; menu-theme ;;
09 | 9) clear ; menu-backup ;;
10) clear ; menu-set ;;
11) clear ; info ;;
12) clear ; reboot ;;
13) clear ; $ressee ;;
14) clear ; $bottt ;;
100) clear ; $up2u ;;
00 | 0) clear ; menu ;;
*) clear ; menu ;;
esac
