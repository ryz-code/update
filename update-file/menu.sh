#!/bin/bash
dateFromServer=$(curl -v --insecure --silent https://google.com/ 2>&1 | grep Date | sed -e 's/< Date: //')
biji=`date +"%Y-%m-%d" -d "$dateFromServer"`

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
    res="Permission Denied! Please Contact Admin @ryzXD t.me/ryzXD"
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

if [[ "$IP" = "" ]]; then
domain=$(cat /usr/local/etc/xray/domain)
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
clear
# Version
myver="$(cat /opt/.ver)"

#Status
if [ "$Isadmin" = "ON" ]; then
uis="${GREEN}Admin$NC"
else
uis="${GREEN}Premium User$NC"
fi

# CERTIFICATE STATUS
d1=$(date -d "$valid" +%s)
d2=$(date -d "$today" +%s)
certifacate=$(( (d1 - d2) / 86400 ))

# OS Uptime
uptime="$(uptime -p | cut -d " " -f 2-10)"

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

# Colour Default
echo "1;33m" > /etc/banner
echo "30m" > /etc/box
echo "1;33m" > /etc/line
echo "1;34m" > /etc/text
echo "1;36m" > /etc/below
echo "47m" > /etc/back
echo "1;37m" > /etc/number

# BANNER COLOUR
banner_colour=$(cat /etc/banner)
# TEXT ON BOX COLOUR
box=$(cat /etc/box)
# LINE COLOUR
line=$(cat /etc/line)
# TEXT COLOUR ON TOP
text=$(cat /etc/text)
# TEXT COLOUR BELOW
below=$(cat /etc/below)
# BACKGROUND TEXT COLOUR
back_text=$(cat /etc/back)
# NUMBER COLOUR
number=$(cat /etc/number)
# BANNER
banner=$(cat /usr/bin/bannerku)
ascii=$(cat /usr/bin/test)
clear
echo -e "\e[$banner_colour"
figlet -f $ascii "$banner"
echo -e "\e[$text Server-By-$creditt"
echo -e   " \e[$line═══════════════════════════════════════════════════\e[m"
echo -e   " \e[$back_text              \e[30m═[\e[$box SERVER INFORMATION\e[30m ]═             \e[m"
echo -e   " \e[$line═══════════════════════════════════════════════════\e[m"
echo -e "  \e[$text Ip Vps/Address              : $IPVPS"
echo -e "  \e[$text Domain Name                 : $(cat /etc/xray/domain)"
echo -e "  \e[$text System Uptime               : $uptime"
echo -e "  \e[$text Isp/Provider Name           : $ISP"
echo -e "  \e[$text City Location               : $CITY"
echo -e "  \e[$text Download                    :  $downloadsize GB "
echo -e "  \e[$text Cpu Usage                   :  $cpu_usage1 %"
echo -e "  \e[$text Cpu Frequency               : $freq MHz"
echo -e "  \e[$text Total Amount Of Ram         :  $tram MB"
echo -e "  \e[$text Used RAM                    :  $uram MB"
echo -e "  \e[$text Free RAM                    :  $fram MB"
echo -e "  \e[$text Upload                      :  $uploadsize GB "
echo -e "  \e[$text Certificate Status          : Expired in $certifacate days"
echo -e   " \e[$line═══════════════════════════════════════════════════\e[m"
echo -e   " \e[$back_text             \e[30m═[\e[$box CLIENT INFORMATION\e[30m ]═              \e[m"
echo -e   " \e[$line═══════════════════════════════════════════════════\e[m"
echo -e   "  \e[$text Client Name       : $Name"
echo -e   "  \e[$text Client Status     : $uis"
echo -e   "  \e[$text Version Name      : $(cat /opt/.ver) Latest Version"
echo -e   "  \e[$text Expired Status    : $exp"
echo -e   " \e[$line═══════════════════════════════════════════════════\e[m"
echo -e   " \e[$back_text                 \e[30m═[\e[$box MAIN MENU\e[30m ]═                   \e[m"
echo -e   " \e[$line═══════════════════════════════════════════════════\e[m"
echo -e   "  \e[$number [01]\e[m \e[$below MENU SSH\e[m             \e[$number [09]\e[m \e[$below MENU THEMES\e[m"
echo -e   "  \e[$number [02]\e[m \e[$below MENU VMESS\e[m           \e[$number [10]\e[m \e[$below MENU BACKUP\e[m"
echo -e   "  \e[$number [03]\e[m \e[$below MENU VLESS\e[m           \e[$number [11]\e[m \e[$below MENU SETTINGS\e[m"
echo -e   "  \e[$number [04]\e[m \e[$below MENU TROJAN\e[m          \e[$number [12]\e[m \e[$below INFORMATION\e[m"
echo -e   "  \e[$number [05]\e[m \e[$below MENU SHADOWSOCK\e[m      \e[$number [13]\e[m \e[$below ADD HOST/DOMAIN\e[m"
echo -e   "  \e[$number [06]\e[m \e[$below MENU SET DNS\e[m         \e[$number [14]\e[m \e[$below RENEW CERT\e[m"
echo -e   "  \e[$number [07]\e[m \e[$below MENU SYSTEM\e[m          \e[$number [15]\e[m \e[$below CLEAR LOG VPS\e[m"
echo -e   "  \e[$number [08]\e[m \e[$below MENU UPDATE\e[m          \e[$number [16]\e[m \e[$below REBOOT VPS\e[m"
echo -e   " \e[$line═══════════════════════════════════════════════════\e[m"
echo -e   " \e[$back_text \e[30m[\e[$box SSH WS : $status_ws\e[30m ]   \e[30m[\e[$box XRAY : $status_xray\e[30m ]   \e[30m[\e[$box NGINX : $status_nginx\e[30m ]  \e[m"      \e[m"
echo -e   " \e[$line═══════════════════════════════════════════════════\e[m"
echo -e   "  \e[$below [Ctrl + C] For exit from main menu\e[m"
echo -e   "\e[$below "
echo -e " Select menu : "; read opt
case $opt in
01 | 1) clear ; menu-ssh ;;
02 | 2) clear ; menu-vmess ;;
03 | 3) clear ; menu-vless ;;
04 | 4) clear ; menu-trojan ;;
05 | 5) clear ; menu-ss ;;
06 | 6) clear ; menu-dns ;;
07 | 7) clear ; menu-system ;;
08 | 8) clear ; menu-update ;;
09 | 9) clear ; menu-theme ;;
10) clear ; menu-backup ;;
11) clear ; menu-set ;;
12) clear ; info ;;
13) clear ; add-host ;;
14) clear ; crtxray ;;
15) clear ; clear-log ;;
15) clear ; reboot ;;
00 | 0) clear ; menu ;;
*) clear ; menu ;;
esac