#!/bin/bash

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
red='\e[1;31m'
green='\e[1;32m'
NC='\e[0m'
green() { echo -e "\\033[32;1m${*}\\033[0m"; }
red() { echo -e "\\033[31;1m${*}\\033[0m"; }
PERMISSION
if [ -f /home/needupdate ]; then
red "Your script need to update first !"
exit 0
elif [ "$res" = "Permission Accepted..." ]; then
echo -ne
else
red "Permission Denied!"
exit 0
fi
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
# FUCTION
function menu1 () {
clear
echo -e " Please enter the name of the menu banner"
read -p " Banner Name : " Name
echo $Name > /usr/bin/bannerku
echo -e "Succesfully Customize Menu."
sleep 0.5
menu
}
function menu2 () {
clear
echo ""
echo -e "\e[$line═══════════════════════════════════════════════════\e[m"
echo -e "\e[$back_text            \e[30m•\e[$box BANNER COLOUR PANEL MENU\e[30m •           \e[m"
echo -e "\e[$line═══════════════════════════════════════════════════\e[m"
echo -e " \e[$number[01]\e[m \e[$below•\e[m RED                 \e[$number[06]\e[m \e[$below•\e[m CYAN"
echo -e " \e[$number[02]\e[m \e[$below•\e[m GREEN               \e[$number[07]\e[m \e[$below•\e[m WHITE"
echo -e " \e[$number[03]\e[m \e[$below•\e[m YELLOW              \e[$number[08]\e[m \e[$below•\e[m BLACK"
echo -e " \e[$number[04]\e[m \e[$below•\e[m BLUE                \e[$number[09]\e[m \e[$below•\e[m GREY"
echo -e " \e[$number[05]\e[m \e[$below•\e[m MAGENTA"
echo -e "\e[$line═══════════════════════════════════════════════════\e[m"
echo -e ""
read -rp " Select Menu : " -e bc
if [[ "$bc" = "1" ]]; then
clear
echo "1;31m" > /etc/banner
echo -e " [INFO] Succesfully Set Red Colour."
sleep 0.5
menu
elif [[ "$bc" = "2" ]]; then
clear
echo "1;32m" > /etc/banner
echo -e " [INFO] Succesfully Set Green Colour."
sleep 0.5
menu
elif [[ "$bc" = "3" ]]; then
clear
echo "1;33m" > /etc/banner
echo -e " [INFO] Succesfully Set Yellow Colour."
sleep 0.5
menu
elif [[ "$bc" = "4" ]]; then
clear
echo "1;34m" > /etc/banner
echo -e " [INFO] Succesfully Set Blue Colour."
sleep 0.5
menu
elif [[ "$bc" = "5" ]]; then
clear
echo "1;35m" > /etc/banner
echo -e " [INFO] Succesfully Set Magenta Colour."
sleep 0.5
menu
elif [[ "$bc" = "6" ]]; then
clear
echo "1;36m" > /etc/banner
echo -e " [INFO] Succesfully Set Cyan Colour."
sleep 0.5
menu
elif [[ "$bc" = "7" ]]; then
clear
echo "1;37m" > /etc/banner
echo -e " [INFO] Succesfully Set White Colour."
sleep 0.5
menu
elif [[ "$bc" = "8" ]]; then
clear
echo "30m" > /etc/banner
echo -e " [INFO] Succesfully Set Black Colour."
sleep 0.5
menu
elif [[ "$bc" = "9" ]]; then
clear
echo "1;30m" > /etc/banner
echo -e " [INFO] Succesfully Set Grey Colour."
sleep 0.5
menu
elif [[ "$bc" = "x" ]]; then
menu-theme
else
clear
echo -e " You Entered The Wrong Number, Please Try Again!"
sleep 1
menu-theme
fi
}
function menu3 () {
clear
echo ""
echo -e " \e[$line════════════════════════════════════════\e[m"
echo -e " \e[$back_text            \e[30m═[\e[$box BANNER FONT\e[30m ]═           \e[m"
echo -e " \e[$line════════════════════════════════════════\e[m"
figlet -f 3D-ASCII "Premium"
echo -e " \e[$number [01]\e[m \e[1;31m 3D ASCII\e[m"
echo -e ""
echo -e ""
figlet -f 3d "Premium"
echo -e " \e[$number [02]\e[m \e[1;32m 3d\e[m"
echo -e ""
echo -e ""
figlet -f 4Max "Premium"
echo -e " \e[$number [03]\e[m \e[1;33m 4Max\e[m"
echo -e ""
echo -e ""
figlet -f Acrobatic "Premium"
echo -e " \e[$number [04]\e[m \e[1;34m Acrobatic\e[m"
echo -e ""
echo -e ""
figlet -f amcaaa01 "Premium"
echo -e " \e[$number (05)\e[m \e[1;35m amcaaa01\e[m"
echo -e ""
echo -e ""
figlet -f Shadow "Premium"
echo -e " \e[$number [06]\e[m \e[1;36m Shadow\e[m"
echo -e ""
echo -e ""
figlet -f Arrows "Premium"
echo -e " \e[$number [07]\e[m \e[1;37m Arrows\e[m"
echo -e ""
echo -e ""
figlet -f Roman "Premium"
echo -e " \e[$number [08]\e[m \e[30m Roman\e[m"
echo -e ""
echo -e ""
figlet -f Avatar "Premium"
echo -e " \e[$number [09]\e[m \e[1;30m Avatar\e[m"
echo -e ""
echo -e ""
figlet -f Banner3 "Premium"
echo -e " \e[$number [10]\e[m \e[1;30m Banner3\e[m"
echo -e ""
echo -e ""
figlet -f Banner4 "Premium"
echo -e " \e[$number [11]\e[m \e[1;30m Banner4\e[m"
echo -e ""
echo -e ""
figlet -f banner "Premium"
echo -e " \e[$number [12]\e[m \e[1;30m banner\e[m"
echo -e ""
echo -e ""
figlet -f Basic "Premium"
echo -e " \e[$number [13]\e[m \e[1;30m Basic\e[m"
echo -e ""
echo -e ""
figlet -f Bear "Premium"
echo -e " \e[$number [14]\e[m \e[1;30m Bear\e[m"
echo -e ""
echo -e ""
figlet -f Big "Premium"
echo -e " \e[$number [15]\e[m \e[1;30m Big\e[m"
echo -e ""
echo -e ""
figlet -f Bloody "Premium"
echo -e " \e[$number [16]\e[m \e[1;30m Bloody\e[m"
echo -e ""
echo -e ""
figlet -f Braced "Premium"
echo -e " \e[$number [17]\e[m \e[1;30m Braced\e[m"
echo -e ""
echo -e ""
figlet -f Bright "Premium"
echo -e " \e[$number [18]\e[m \e[1;30m Bright\e[m"
echo -e ""
echo -e ""
figlet -f Bubble "Premium"
echo -e " \e[$number [19]\e[m \e[1;30m Bubble\e[m"
echo -e ""
echo -e ""
figlet -f Cards "Premium"
echo -e " \e[$number [20]\e[m \e[1;30m Cards\e[m"
echo -e ""
echo -e ""
figlet -f Colossal "Premium"
echo -e " \e[$number [21]\e[m \e[1;30m Colossal\e[m"
echo -e ""
echo -e ""
figlet -f Contrast "Premium"
echo -e " \e[$number [22]\e[m \e[1;30m Contrast\e[m"
echo -e ""
echo -e ""
figlet -f cosmic "Premium"
echo -e " \e[$number [23]\e[m \e[1;30m cosmic\e[m"
echo -e ""
echo -e ""
figlet -f Digital "Premium"
echo -e " \e[$number [24]\e[m \e[1;30m Digital\e[m"
echo -e ""
echo -e ""
figlet -f Double "Premium"
echo -e " \e[$number [25]\e[m \e[1;30m Double\e[m"
echo -e ""
echo -e ""
figlet -f Epic "Premium"
echo -e " \e[$number [26]\e[m \e[1;30m Epic\e[m"
echo -e ""
echo -e ""
figlet -f fire_font-k "Premium"
echo -e " \e[$number [27]\e[m \e[1;30m fire_font-k\e[m"
echo -e ""
echo -e ""
figlet -f fire_font-s "Premium"
echo -e " \e[$number [28]\e[m \e[1;30m fire_font-s\e[m"
echo -e ""
echo -e ""
figlet -f Georgi16 "Premium"
echo -e " \e[$number (29)\e[m \e[1;30m Georgi16\e[m"
echo -e ""
echo -e ""
figlet -f Slant "Premium"
echo -e " \e[$number [30]\e[m \e[1;30m Slant\e[m"
echo -e ""
echo -e ""
figlet -f Banner "Premium"
echo -e " \e[$number [31]\e[m \e[1;30m Banner\e[m"
echo -e ""
echo -e ""
figlet -f Poison "Premium"
echo -e " \e[$number [32]\e[m \e[1;30m Poison\e[m"
echo -e ""
echo -e ""
figlet -f Reverse "Premium"
echo -e " \e[$number [33]\e[m \e[1;30m Reverse\e[m"
echo -e ""
echo -e ""
figlet -f Standard "Premium"
echo -e " \e[$number [34]\e[m \e[1;30m Standard\e[m"
echo -e ""
echo -e ""
figlet -f Univers "Premium"
echo -e " \e[$number [35]\e[m \e[1;30m Univers\e[m"
echo -e ""
echo -e " \e[$line════════════════════════════════════════\e[m"
echo -e " \e[$back_text \e[$box x) Themes Menu                        \e[m"
echo -e " \e[$line════════════════════════════════════════\e[m"
echo -e "\e[$line"
read -rp " Please Enter 1-35 or x : " -e b
if [[ "$b" = "1" ]]; then
clear
echo "3D-ASCII" > /usr/bin/test
echo -e " Succesfully Set 3D ASCII Banner."
sleep 0.5
menu
elif [[ "$b" = "2" ]]; then
clear
echo "3d" > /usr/bin/test
echo -e " Succesfully Set 3d Banner."
sleep 0.5
menu
elif [[ "$b" = "3" ]]; then
clear
echo "4Max" > /usr/bin/test
echo -e " Succesfully Set 4Max Banner."
sleep 0.5
menu
elif [[ "$b" = "4" ]]; then
clear
echo "Acrobatic" > /usr/bin/test
echo -e " Succesfully Set Acrobatic Banner."
sleep 0.5
menu
elif [[ "$b" = "5" ]]; then
clear
echo "amcaaa01" > /usr/bin/test
echo -e " Succesfully Set amcaaa01 Banner."
sleep 0.5
menu
elif [[ "$b" = "6" ]]; then
clear
echo "Shadow" > /usr/bin/test
echo -e " Succesfully Set Shadow Banner."
sleep 0.5
menu
elif [[ "$b" = "7" ]]; then
clear
echo "Arrows" > /usr/bin/test
echo -e " Succesfully Set Arrows Banner."
sleep 0.5
menu
elif [[ "$b" = "8" ]]; then
clear
echo "Roman" > /usr/bin/test
echo -e " Succesfully Set Roman Banner."
sleep 0.5
menu
elif [[ "$b" = "9" ]]; then
clear
echo "Avatar" > /usr/bin/test
echo -e " Succesfully Set Avatar Banner."
sleep 0.5
menu
elif [[ "$b" = "10" ]]; then
clear
echo "Banner3" > /usr/bin/test
echo -e " Succesfully Set Banner3 Banner."
sleep 0.5
menu
elif [[ "$b" = "11" ]]; then
clear
echo "Banner4" > /usr/bin/test
echo -e " Succesfully Set Banner4 Banner."
sleep 0.5
menu
elif [[ "$b" = "12" ]]; then
clear
echo "banner" > /usr/bin/test
echo -e " Succesfully Set banner Banner."
sleep 0.5
menu
elif [[ "$b" = "13" ]]; then
clear
echo "Basic" > /usr/bin/test
echo -e " Succesfully Set Basic Banner."
sleep 0.5
menu
elif [[ "$b" = "14" ]]; then
clear
echo "Bear" > /usr/bin/test
echo -e " Succesfully Set Bear Banner."
sleep 0.5
menu
elif [[ "$b" = "15" ]]; then
clear
echo "Big" > /usr/bin/test
echo -e " Succesfully Set Big Banner."
sleep 0.5
menu
elif [[ "$b" = "16" ]]; then
clear
echo "Bloody" > /usr/bin/test
echo -e " Succesfully Set Bloody Banner."
sleep 0.5
menu
elif [[ "$b" = "17" ]]; then
clear
echo "Braced" > /usr/bin/test
echo -e " Succesfully Set Braced Banner."
sleep 0.5
menu
elif [[ "$b" = "18" ]]; then
clear
echo "Bright" > /usr/bin/test
echo -e " Succesfully Set Bright Banner."
sleep 0.5
menu
elif [[ "$b" = "19" ]]; then
clear
echo "Bubble" > /usr/bin/test
echo -e " Succesfully Set Bubble Banner."
sleep 0.5
menu
elif [[ "$b" = "20" ]]; then
clear
echo "Cards" > /usr/bin/test
echo -e " Succesfully Set Cards Banner."
sleep 0.5
menu
elif [[ "$b" = "21" ]]; then
clear
echo "Colossal" > /usr/bin/test
echo -e " Succesfully Set Colossal Banner."
sleep 0.5
menu
elif [[ "$b" = "22" ]]; then
clear
echo "Contrast" > /usr/bin/test
echo -e " Succesfully Set Contrast Banner."
sleep 0.5
menu
elif [[ "$b" = "23" ]]; then
clear
echo "Cosmic" > /usr/bin/test
echo -e " Succesfully Set Cosmic Banner."
sleep 0.5
menu
elif [[ "$b" = "24" ]]; then
clear
echo "Digital" > /usr/bin/test
echo -e " Succesfully Set Digital Banner."
sleep 0.5
menu
elif [[ "$b" = "25" ]]; then
clear
echo "Double" > /usr/bin/test
echo -e " Succesfully Set Double Banner."
sleep 0.5
menu
elif [[ "$b" = "26" ]]; then
clear
echo "Epic" > /usr/bin/test
echo -e " Succesfully Set Epic Banner."
sleep 0.5
menu
elif [[ "$b" = "27" ]]; then
clear
echo "fire_font-k" > /usr/bin/test
echo -e " Succesfully Set fire_font-k Banner."
sleep 0.5
menu
elif [[ "$b" = "28" ]]; then
clear
echo "fire_font-s" > /usr/bin/test
echo -e " Succesfully Set fire_font-s Banner."
sleep 0.5
menu
elif [[ "$b" = "29" ]]; then
clear
echo "Georgi16" > /usr/bin/test
echo -e " Succesfully Set Georgi16 Banner."
sleep 0.5
menu
elif [[ "$b" = "30" ]]; then
clear
echo "Slant" > /usr/bin/test
echo -e "Succesfully Set Slant Banner."
sleep 0.5
menu
elif [[ "$b" = "31" ]]; then
clear
echo "Banner" > /usr/bin/test
echo -e " Succesfully Set Banner Banner."
sleep 0.5
menu
elif [[ "$b" = "32" ]]; then
clear
echo "Poison" > /usr/bin/test
echo -e " Succesfully Set Poison Banner."
sleep 0.5
menu
elif [[ "$b" = "33" ]]; then
clear
echo "Reverse" > /usr/bin/test
echo -e " Succesfully Set Reverse Banner."
sleep 0.5
menu
elif [[ "$b" = "34" ]]; then
clear
echo "Standard" > /usr/bin/test
echo -e " Succesfully Set Standard Banner."
sleep 0.5
menu
elif [[ "$b" = "35" ]]; then
clear
echo "Univers" > /usr/bin/test
echo -e " Succesfully Set Univers Banner."
sleep 0.5
menu
elif [[ "$b" = "x" ]]; then
menu-theme
else
clear
echo -e " You Entered The Wrong Number, Please Try Again!"
sleep 1
menu-theme
fi
}
function menu4 () {
clear
echo ""
echo -e "\e[$line═══════════════════════════════════════════════════\e[m"
echo -e "\e[$back_text            \e[30m•\e[$box NUMBER COLOR PANEL MENU\e[30m •            \e[m"
echo -e "\e[$line═══════════════════════════════════════════════════\e[m"
echo -e " \e[$number[01]\e[m \e[$below•\e[m RED                 \e[$number[06]\e[m \e[$below•\e[m CYAN"
echo -e " \e[$number[02]\e[m \e[$below•\e[m GREEN               \e[$number[07]\e[m \e[$below•\e[m WHITE"
echo -e " \e[$number[03]\e[m \e[$below•\e[m YELLOW              \e[$number[08]\e[m \e[$below•\e[m BLACK"
echo -e " \e[$number[04]\e[m \e[$below•\e[m BLUE                \e[$number[09]\e[m \e[$below•\e[m GREY"
echo -e " \e[$number[05]\e[m \e[$below•\e[m MAGENTA"
echo -e "\e[$line═══════════════════════════════════════════════════\e[m"
echo -e "\e[$back_text\e[$box            • AUTOSCRIPT BY RYZ STORE •            \e[m"
echo -e "\e[$line═══════════════════════════════════════════════════\e[m"
echo ""
read -rp " Select Menu : " -e bc
if [[ "$bc" = "1" ]]; then
clear
echo "1;31m" > /etc/text
echo -e " Succesfully Set Red Colour."
sleep 0.5
menu
elif [[ "$bc" = "2" ]]; then
clear
echo "1;32m" > /etc/text
echo -e " Succesfully Set Green Colour."
sleep 0.5
menu
elif [[ "$bc" = "3" ]]; then
clear
echo "1;33m" > /etc/text
echo -e " Succesfully Set Yellow Colour."
sleep 0.5
menu
elif [[ "$bc" = "4" ]]; then
clear
echo "1;34m" > /etc/text
echo -e " Succesfully Set Blue Colour."
sleep 0.5
menu
elif [[ "$bc" = "5" ]]; then
clear
echo "1;35m" > /etc/text
echo -e " Succesfully Set Magenta Colour."
sleep 0.5
menu
elif [[ "$bc" = "6" ]]; then
clear
echo "1;36m" > /etc/text
echo -e " Succesfully Set Cyan Colour."
sleep 0.5
menu
elif [[ "$bc" = "7" ]]; then
clear
echo "1;37m" > /etc/text
echo -e " Succesfully Set White Colour."
sleep 0.5
menu
elif [[ "$bc" = "8" ]]; then
clear
echo "30m" > /etc/text
echo -e " Succesfully Set Black Colour."
sleep 0.5
menu
elif [[ "$bc" = "9" ]]; then
clear
echo "1;30m" > /etc/text
echo -e " Succesfully Set Grey Colour."
sleep 0.5
menu
elif [[ "$bc" = "x" ]]; then
menu-theme
else
clear
echo -e "You Entered The Wrong Number, Please Try Again!"
sleep 1
themes
fi
}
function menu5 () {
clear
echo ""
echo -e "\e[$line═══════════════════════════════════════════════════\e[m"
echo -e "\e[$back_text            \e[30m•\e[$box BOTTOM COLOR PANEL MENU\e[30m •            \e[m"
echo -e "\e[$line═══════════════════════════════════════════════════\e[m"
echo -e " \e[$number[01]\e[m \e[$below•\e[m RED                 \e[$number[06]\e[m \e[$below•\e[m CYAN"
echo -e " \e[$number[02]\e[m \e[$below•\e[m GREEN               \e[$number[07]\e[m \e[$below•\e[m WHITE"
echo -e " \e[$number[03]\e[m \e[$below•\e[m YELLOW              \e[$number[08]\e[m \e[$below•\e[m BLACK"
echo -e " \e[$number[04]\e[m \e[$below•\e[m BLUE                \e[$number[09]\e[m \e[$below•\e[m GREY"
echo -e " \e[$number[05]\e[m \e[$below•\e[m MAGENTA"
echo -e "\e[$line═══════════════════════════════════════════════════\e[m"
echo -e "\e[$back_text\e[$box            • AUTOSCRIPT BY RYZ STORE •            \e[m"
echo -e "\e[$line═══════════════════════════════════════════════════\e[m"
echo ""
read -rp " Select Menu : " -e bc
if [[ "$bc" = "1" ]]; then
clear
echo "1;31m" > /etc/below
echo -e " Succesfully Set Red Colour."
sleep 0.5
menu
elif [[ "$bc" = "2" ]]; then
clear
echo "1;32m" > /etc/below
echo -e " Succesfully Set Green Colour."
sleep 0.5
menu
elif [[ "$bc" = "3" ]]; then
clear
echo "1;33m" > /etc/below
echo -e " Succesfully Set Yellow Colour."
sleep 0.5
menu
elif [[ "$bc" = "4" ]]; then
clear
echo "1;34m" > /etc/below
echo -e " Succesfully Set Blue Colour."
sleep 0.5
menu
elif [[ "$bc" = "5" ]]; then
clear
echo "1;35m" > /etc/below
echo -e " Succesfully Set Magenta Colour."
sleep 0.5
menu
elif [[ "$bc" = "6" ]]; then
clear
echo "1;36m" > /etc/below
echo -e " Succesfully Set Cyan Colour."
sleep 0.5
menu
elif [[ "$bc" = "7" ]]; then
clear
echo "1;37m" > /etc/below
echo -e " Succesfully Set White Colour."
sleep 0.5
menu
elif [[ "$bc" = "8" ]]; then
clear
echo "30m" > /etc/below
echo -e " Succesfully Set Black Colour."
sleep 0.5
menu
elif [[ "$bc" = "9" ]]; then
clear
echo "1;30m" > /etc/below
echo -e "Succesfully Set Grey Colour."
sleep 0.5
menu
elif [[ "$bc" = "x" ]]; then
themes
else
clear
echo -e " You Entered The Wrong Number, Please Try Again!"
sleep 1
themes
fi
}
function menu6 () {
clear
echo ""
echo -e "\e[$line═══════════════════════════════════════════════════\e[m"
echo -e "\e[$back_text            \e[30m•\e[$box LINE COLOR PANEL MENU\e[30m •              \e[m"
echo -e "\e[$line═══════════════════════════════════════════════════\e[m"
echo -e " \e[$number[01]\e[m \e[$below•\e[m RED                 \e[$number[06]\e[m \e[$below•\e[m CYAN"
echo -e " \e[$number[02]\e[m \e[$below•\e[m GREEN               \e[$number[07]\e[m \e[$below•\e[m WHITE"
echo -e " \e[$number[03]\e[m \e[$below•\e[m YELLOW              \e[$number[08]\e[m \e[$below•\e[m BLACK"
echo -e " \e[$number[04]\e[m \e[$below•\e[m BLUE                \e[$number[09]\e[m \e[$below•\e[m GREY"
echo -e " \e[$number[05]\e[m \e[$below•\e[m MAGENTA"
echo -e "\e[$line═══════════════════════════════════════════════════\e[m"
echo -e "\e[$back_text\e[$box            • AUTOSCRIPT BY RYZ STORE •            \e[m"
echo -e "\e[$line═══════════════════════════════════════════════════\e[m"
echo -e "\e[$line"
read -rp " Select Menu : " -e bc
if [[ "$bc" = "1" ]]; then
clear
echo "1;31m" > /etc/line
echo -e " Succesfully Set Red Colour."
sleep 0.5
menu
elif [[ "$bc" = "2" ]]; then
clear
echo "1;32m" > /etc/line
echo -e " Succesfully Set Green Colour."
sleep 0.5
menu
elif [[ "$bc" = "3" ]]; then
clear
echo "1;33m" > /etc/line
echo -e " Succesfully Set Yellow Colour."
sleep 0.5
menu
elif [[ "$bc" = "4" ]]; then
clear
echo "1;34m" > /etc/line
echo -e " Succesfully Set Blue Colour."
sleep 0.5
menu
elif [[ "$bc" = "5" ]]; then
clear
echo "1;35m" > /etc/line
echo -e " Succesfully Set Magenta Colour."
sleep 0.5
menu
elif [[ "$bc" = "6" ]]; then
clear
echo "1;36m" > /etc/line
echo -e " Succesfully Set Cyan Colour."
sleep 0.5
menu
elif [[ "$bc" = "7" ]]; then
clear
echo "1;37m" > /etc/line
echo -e " Succesfully Set White Colour."
sleep 0.5
menu
elif [[ "$bc" = "8" ]]; then
clear
echo "30m" > /etc/line
echo -e " Succesfully Set Black Colour."
sleep 0.5
menu
elif [[ "$bc" = "9" ]]; then
clear
echo "1;30m" > /etc/line
echo -e " Succesfully Set Grey Colour."
sleep 0.5
menu
elif [[ "$bc" = "x" ]]; then
menu-theme
else
clear
echo -e "You Entered The Wrong Number, Please Try Again!"
sleep 1
menu-theme
fi
}
function menu7 () {
clear
echo ""
echo -e "\e[$line═══════════════════════════════════════════════════\e[m"
echo -e "\e[$back_text            \e[30m•\e[$box BOX COLOR PANEL MENU\e[30m •               \e[m"
echo -e "\e[$line═══════════════════════════════════════════════════\e[m"
echo -e " \e[$number[01]\e[m \e[$below•\e[m RED                 \e[$number[06]\e[m \e[$below•\e[m CYAN"
echo -e " \e[$number[02]\e[m \e[$below•\e[m GREEN               \e[$number[07]\e[m \e[$below•\e[m WHITE"
echo -e " \e[$number[03]\e[m \e[$below•\e[m YELLOW              \e[$number[08]\e[m \e[$below•\e[m BLACK"
echo -e " \e[$number[04]\e[m \e[$below•\e[m BLUE                \e[$number[09]\e[m \e[$below•\e[m GREY"
echo -e " \e[$number[05]\e[m \e[$below•\e[m MAGENTA"
echo -e "\e[$line═══════════════════════════════════════════════════\e[m"
echo -e "\e[$back_text\e[$box            • AUTOSCRIPT BY RYZ STORE •            \e[m"
echo -e "\e[$line═══════════════════════════════════════════════════\e[m"
echo -e "\e[$line"
read -rp " Select Menu : " -e bc
if [[ "$bc" = "1" ]]; then
clear
echo "1;31m" > /etc/box
echo -e " Succesfully Set Red Colour."
sleep 0.5
menu
elif [[ "$bc" = "2" ]]; then
clear
echo "1;32m" > /etc/box
echo -e " Succesfully Set Green Colour."
sleep 0.5
menu
elif [[ "$bc" = "3" ]]; then
clear
echo "1;33m" > /etc/box
echo -e " Succesfully Set Yellow Colour."
sleep 0.5
menu
elif [[ "$bc" = "4" ]]; then
clear
echo "1;34m" > /etc/box
echo -e " Succesfully Set Blue Colour."
sleep 0.5
menu
elif [[ "$bc" = "5" ]]; then
clear
echo "1;35m" > /etc/box
echo -e " Succesfully Set Magenta Colour."
sleep 0.5
menu
elif [[ "$bc" = "6" ]]; then
clear
echo "1;36m" > /etc/box
echo -e " Succesfully Set Cyan Colour."
sleep 0.5
menu
elif [[ "$bc" = "7" ]]; then
clear
echo "1;37m" > /etc/box
echo -e " Succesfully Set White Colour."
sleep 0.5
menu
elif [[ "$bc" = "8" ]]; then
clear
echo "30m" > /etc/box
echo -e " Succesfully Set Black Colour."
sleep 0.5
menu
elif [[ "$bc" = "9" ]]; then
clear
echo "1;30m" > /etc/box
echo -e " Succesfully Set Grey Colour."
sleep 0.5
menu
elif [[ "$bc" = "x" ]]; then
themes
else
clear
echo -e "You Entered The Wrong Number, Please Try Again!"
sleep 1
themes
fi
}
function menu8 () {
clear
echo ""
echo -e "\e[$line═══════════════════════════════════════════════════\e[m"
echo -e "\e[$back_text              \e[30m•\e[$box BG COLOR PANEL MENU\e[30m •              \e[m"
echo -e "\e[$line═══════════════════════════════════════════════════\e[m"
echo -e " \e[$number[01]\e[m \e[$below•\e[m RED                 \e[$number[06]\e[m \e[$below•\e[m CYAN"
echo -e " \e[$number[02]\e[m \e[$below•\e[m GREEN               \e[$number[07]\e[m \e[$below•\e[m WHITE"
echo -e " \e[$number[03]\e[m \e[$below•\e[m YELLOW              \e[$number[08]\e[m \e[$below•\e[m BLACK"
echo -e " \e[$number[04]\e[m \e[$below•\e[m BLUE                \e[$number[09]\e[m \e[$below•\e[m GREY"
echo -e " \e[$number[05]\e[m \e[$below•\e[m MAGENTA"
echo -e "\e[$line═══════════════════════════════════════════════════\e[m"
echo -e "\e[$back_text\e[$box            • AUTOSCRIPT BY RYZ STORE •            \e[m"
echo -e "\e[$line═══════════════════════════════════════════════════\e[m"
echo -e "\e[$line"
read -rp " Select Menu : " -e bc
if [[ "$bc" = "1" ]]; then
clear
echo "41m" > /etc/back
echo -e " Succesfully Set Red Colour."
sleep 0.5
menu
elif [[ "$bc" = "2" ]]; then
clear
echo "42m" > /etc/back
echo -e "Succesfully Set Green Colour."
sleep 0.5
menu
elif [[ "$bc" = "3" ]]; then
clear
echo "43m" > /etc/back
echo -e " Succesfully Set Yellow Colour."
sleep 0.5
menu
elif [[ "$bc" = "4" ]]; then
clear
echo "44m" > /etc/back
echo -e " Succesfully Set Blue Colour."
sleep 0.5
menu
elif [[ "$bc" = "5" ]]; then
clear
echo "45m" > /etc/back
echo -e " Succesfully Set Magenta Colour."
sleep 0.5
menu
elif [[ "$bc" = "6" ]]; then
clear
echo "46m" > /etc/back
echo -e " Succesfully Set Cyan Colour."
sleep 0.5
menu
elif [[ "$bc" = "7" ]]; then
clear
echo "47m" > /etc/back
echo -e " Succesfully Set White Colour."
sleep 0.5
menu
elif [[ "$bc" = "8" ]]; then
clear
echo "40m" > /etc/back
echo -e " Succesfully Set Grey Colour."
sleep 0.5
menu
elif [[ "$bc" = "9" ]]; then
clear
echo "1;36m" > /etc/back
echo -e " Succesfully Set No Colour."
sleep 0.5
menu
elif [[ "$bc" = "x" ]]; then
themes
else
clear
echo -e "You Entered The Wrong Number, Please Try Again!"
sleep 1
themes
fi
}
function menu9 () {
clear
echo ""
echo -e "\e[$line═══════════════════════════════════════════════════\e[m"
echo -e "\e[$back_text             \e[30m•\e[$box NUMBER COLOR PANEL MENU\e[30m •           \e[m"
echo -e "\e[$line═══════════════════════════════════════════════════\e[m"
echo -e " \e[$number[01]\e[m \e[$below•\e[m RED                 \e[$number[06]\e[m \e[$below•\e[m CYAN"
echo -e " \e[$number[02]\e[m \e[$below•\e[m GREEN               \e[$number[07]\e[m \e[$below•\e[m WHITE"
echo -e " \e[$number[03]\e[m \e[$below•\e[m YELLOW              \e[$number[08]\e[m \e[$below•\e[m BLACK"
echo -e " \e[$number[04]\e[m \e[$below•\e[m BLUE                \e[$number[09]\e[m \e[$below•\e[m GREY"
echo -e " \e[$number[05]\e[m \e[$below•\e[m MAGENTA"
echo -e "\e[$line═══════════════════════════════════════════════════\e[m"
echo -e "\e[$back_text\e[$box            • AUTOSCRIPT BY RYZ STORE •            \e[m"
echo -e "\e[$line═══════════════════════════════════════════════════\e[m"
echo ""
read -rp " Select Menu : " -e bc
if [[ "$bc" = "1" ]]; then
clear
echo "1;31m" > /etc/number
echo -e " Succesfully Set Red Colour."
sleep 0.5
menu
elif [[ "$bc" = "2" ]]; then
clear
echo "1;32m" > /etc/number
echo -e " Succesfully Set Green Colour."
sleep 0.5
menu
elif [[ "$bc" = "3" ]]; then
clear
echo "1;33m" > /etc/number
echo -e " Succesfully Set Yellow Colour."
sleep 0.5
menu
elif [[ "$bc" = "4" ]]; then
clear
echo "1;34m" > /etc/number
echo -e " Succesfully Set Blue Colour."
sleep 0.5
menu
elif [[ "$bc" = "5" ]]; then
clear
echo "1;35m" > /etc/number
echo -e " Succesfully Set Magenta Colour."
sleep 0.5
menu
elif [[ "$bc" = "6" ]]; then
clear
echo "1;36m" > /etc/number
echo -e " Succesfully Set Cyan Colour."
sleep 0.5
menu
elif [[ "$bc" = "7" ]]; then
clear
echo "1;37m" > /etc/number
echo -e " Succesfully Set White Colour."
sleep 0.5
menu
elif [[ "$bc" = "8" ]]; then
clear
echo "30m" > /etc/number
echo -e "Succesfully Set Black Colour."
sleep 0.5
menu
elif [[ "$bc" = "9" ]]; then
clear
echo "1;30m" > /etc/number
echo -e " Succesfully Set Grey Colour."
sleep 0.5
menu
elif [[ "$bc" = "x" ]]; then
themes
else
clear
echo -e " You Entered The Wrong Number, Please Try Again!"
sleep 1
themes
fi
}

# MENU THEME
function menu10 () {
clear
echo ""
echo -e "\e[$line═══════════════════════════════════════════════════\e[m"
echo -e "\e[$back_text             \e[30m•\e[$box THEMES COLOUR PANEL MENU\e[30m •          \e[m"
echo -e "\e[$line═══════════════════════════════════════════════════\e[m"
echo -e " \e[$number[01]\e[m \e[$below•\e[m YOUTUBE STYLE       \e[$number[05]\e[m \e[$below•\e[m HORROR STYLE"
echo -e " \e[$number[02]\e[m \e[$below•\e[m FACEBOOK STYLE      \e[$number[06]\e[m \e[$below•\e[m CYAN STYLE"
echo -e " \e[$number[03]\e[m \e[$below•\e[m WHATSAPP STYLE      \e[$number[07]\e[m \e[$below•\e[m DEFAULT THEMES"
echo -e " \e[$number[04]\e[m \e[$below•\e[m SQUID GAME STYLE"
echo -e "\e[$line═══════════════════════════════════════════════════\e[m"
echo -e "\e[$back_text\e[$box            • AUTOSCRIPT BY RYZ STORE •            \e[m"
echo -e "\e[$line═══════════════════════════════════════════════════\e[m"
echo ""
read -rp " Select Menu : " -e bc
if [[ "$bc" = "1" ]]; then
clear
# Colour Banner
echo "1;31m" > /etc/banner
# Colour in the box menu
echo "30m" > /etc/box
# Colour line menu
echo "1;31m" > /etc/line
# Colour top menu
echo "1;31m" > /etc/text
# Colour bot menu
echo "1;31m" > /etc/below
# Colour backround
echo "47m" > /etc/back
# Colour number
echo "1;37m" > /etc/number
# Font banner
echo 3d > /usr/bin/test
# Banner Name
echo YouTube > /usr/bin/bannerku
echo -e "Succesfully Set Youtube Style."
sleep 0.5
menu
elif [[ "$bc" = "2" ]]; then
clear
# Colour Banner
echo "1;34m" > /etc/banner
# Colour in the box menu
echo "1;37m" > /etc/box
# Colour line menu
echo "1;30m" > /etc/line
# Colour top menu
echo "1;34m" > /etc/text
# Colour bot menu
echo "1;34m" > /etc/below
# Colour backround
echo "1;36m" > /etc/back
# Colour number
echo "1;37m" > /etc/number
# Font banner
echo Standard > /usr/bin/test
# Banner Name
echo Facebook > /usr/bin/bannerku
echo -e " Succesfully Set Facebook Style."
sleep 0.5
menu
elif [[ "$bc" = "3" ]]; then
clear
# Colour Banner
echo "1;32m" > /etc/banner
# Colour in the box menu
echo "1;37m" > /etc/box
# Colour line menu
echo "1;32m" > /etc/line
# Colour top menu
echo "1;32m" > /etc/text
# Colour bot menu
echo "1;32m" > /etc/below
# Colour backround
echo "42m" > /etc/back
# Colour number
echo "1;37m" > /etc/number
# Font banner
echo Slant > /usr/bin/test
# Banner Name
echo WhatsApp > /usr/bin/bannerku
echo -e " Succesfully Set WhatsApp Style."
sleep 0.5
menu
elif [[ "$bc" = "4" ]]; then
clear
# Colour Banner
echo "1;35m" > /etc/banner
# Colour in the box menu
echo "30m" > /etc/box
# Colour line menu
echo "1;35m" > /etc/line
# Colour top menu
echo "1;35m" > /etc/text
# Colour bot menu
echo "1;35m" > /etc/below
# Colour backround
echo "47m" > /etc/back
# Colour number
echo "1;37m" > /etc/number
# Font banner
echo Braced > /usr/bin/test
# Banner Name
echo Squid Game > /usr/bin/bannerku
echo -e " Succesfully Set Squid Game Style."
sleep 0.5
menu
elif [[ "$bc" = "5" ]]; then
clear
# Colour Banner
echo "1;31m" > /etc/banner
# Colour in the box menu
echo "30m" > /etc/box
# Colour line menu
echo "1;31m" > /etc/line
# Colour top menu
echo "1;31m" > /etc/text
# Colour bot menu
echo "1;31m" > /etc/below
# Colour backround
echo "41m" > /etc/back
# Colour number
echo "1;31m" > /etc/number
# Font banner
echo Bloody > /usr/bin/test
# Banner Name
echo SILENCE > /usr/bin/bannerku
echo -e " Succesfully Set Horror Style."
sleep 0.5
menu
elif [[ "$bc" = "6" ]]; then
clear
# Colour Banner
echo "1;36m" > /etc/banner
# Colour in the box menu
echo "30m" > /etc/box
# Colour line menu
echo "1;36m" > /etc/line
# Colour top menu
echo "1;36m" > /etc/text
# Colour bot menu
echo "1;36m" > /etc/below
# Colour backround
echo "47m" > /etc/back
# Colour number
echo "1;37m" > /etc/number
# Font banner
echo 3d > /usr/bin/test
# Banner Name
echo Premium > /usr/bin/bannerku
echo -e " Succesfully Set Colour Cyan Style."
sleep 0.5
menu
elif [[ "$bc" = "7" ]]; then
clear
echo "1;36m" > /etc/banner
echo "30m" > /etc/box
echo "1;31m" > /etc/line
echo "1;32m" > /etc/text
echo "1;33m" > /etc/below
echo "47m" > /etc/back
echo "1;35m" > /etc/number
echo 3d > /usr/bin/test
# Banner Name
echo Premium > /usr/bin/bannerku
echo -e " Succesfully Set Default Theme."
sleep 0.5
menu
elif [[ "$bc" = "x" ]]; then
themes
else
clear
echo -e " You Entered The Wrong Number, Please Try Again!"
sleep 1
themes
fi
}
# MENU 
clear
echo ""
echo -e "\e[$line═══════════════════════════════════════════════════\e[m"
echo -e "\e[$back_text               \e[30m•\e[$box THEMES PANEL MENU\e[30m •               \e[m"
echo -e "\e[$line═══════════════════════════════════════════════════\e[m"
echo -e " \e[$number[01]\e[m \e[$below•\e[m BANNER NAME          \e[$number[06]\e[m \e[$below•\e[m LINE COLOR"
echo -e " \e[$number[02]\e[m \e[$below•\e[m BANER COLOUR         \e[$number[07]\e[m \e[$below•\e[m BOX COLOR"
echo -e " \e[$number[03]\e[m \e[$below•\e[m BANNER FONT          \e[$number[08]\e[m \e[$below•\e[m BG COLOR"
echo -e " \e[$number[04]\e[m \e[$below•\e[m TOP COLOR            \e[$number[09]\e[m \e[$below•\e[m NUMBER COLOR"
echo -e " \e[$number[05]\e[m \e[$below•\e[m BOTTOM COLOR         \e[$number[05]\e[m \e[$below•\e[m THEME STYLE"
echo -e "\e[$line═══════════════════════════════════════════════════\e[m"
echo -e "\e[$back_text\e[$box            • AUTOSCRIPT BY RYZ STORE •            \e[m"
echo -e "\e[$line═══════════════════════════════════════════════════\e[m"
echo ""
read -rp " Select Menu : " -e num
if [[ "$num" = "1" ]]; then
menu1
elif [[ "$num" = "2" ]]; then
menu2
elif [[ "$num" = "3" ]]; then
menu3
elif [[ "$num" = "4" ]]; then
menu4
elif [[ "$num" = "5" ]]; then
menu5
elif [[ "$num" = "6" ]]; then
menu6
elif [[ "$num" = "7" ]]; then
menu7
elif [[ "$num" = "8" ]]; then
menu8
elif [[ "$num" = "9" ]]; then
menu9
elif [[ "$num" = "10" ]]; then
menu10
elif [[ "$num" = "11" ]]; then
menu11
elif [[ "$num" = "x" ]]; then
menu
else
clear
echo -e " You Entered The Wrong Number, Please Try Again!"
sleep 1
menu-theme
fi
