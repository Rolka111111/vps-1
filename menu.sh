#!/bin/bash
yl='\e[32;1m'
bl='\e[36;1m'
gl='\e[32;1m'
rd='\e[31;1m'
mg='\e[0;95m'
blu='\e[34m'
op='\e[35m'
or='\033[1;33m'
bd='\e[1m'
red='\e[1;31m'
green='\e[0;32m'
NC='\e[0m'
bl='\e[36;1m'
bd='\e[1m'
color1='\e[031;1m'
color2='\e[34;1m'
color3='\e[0m'
clear 
cat /usr/bin/bannerku | lolcat
ISP=$(curl -s ipinfo.io/org | cut -d " " -f 2-10 )
IPVPS=$(curl -s ipinfo.io/ip )
domain=$(cat /etc/xray/domain)
ISP=$(curl -s ipinfo.io/org | cut -d " " -f 2-10 )
CITY=$(curl -s ipinfo.io/city )
WKT=$(curl -s ipinfo.io/timezone )
IPVPS=$(curl -s ipinfo.io/ip )
jam=$(date +"%T")
hari=$(date +"%A")
tnggl=$(date +"%d-%B-%Y")
	cname=$( awk -F: '/model name/ {name=$2} END {print name}' /proc/cpuinfo )
	cores=$( awk -F: '/model name/ {core++} END {print core}' /proc/cpuinfo )
	freq=$( awk -F: ' /cpu MHz/ {freq=$2} END {print freq}' /proc/cpuinfo )
	tram=$( free -m | awk 'NR==2 {print $2}' )
	swap=$( free -m | awk 'NR==4 {print $2}' )
	up=$(uptime|awk '{ $1=$2=$(NF-6)=$(NF-5)=$(NF-4)=$(NF-3)=$(NF-2)=$(NF-1)=$NF=""; print }')
 echo -e  "  ║                       [ INFORMASI VPS ]                   ║" |lolcat
 echo -e  "  ╠♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤╣"| lolcat
 echo -e " $bl ║ \e[36;1m• ISP Name          :\e[0m$bd $ISP"
 echo -e " $bl ║ \e[36;1m• City              :\e[0m$bd $CITY"
 echo -e " $bl ║ \e[36;1m• CPU Model         :\e[0m$bd$cname"
 echo -e " $bl ║ \e[36;1m• Number Of Cores   :\e[0m$bd $cores"
 echo -e " $gl ║ \e[36;1m• CPU Frequency     :\e[0m$bd$freq MHz"
 echo -e " $gl ║ \e[36;1m• Total RAM         :\e[0m$bd $tram MB"
 echo -e " $gl ║ \e[36;1m• Waktu             :\e[0m$bd $jam"
 echo -e " $mg ║ \e[36;1m• Hari              :\e[0m$bd $hari"
 echo -e " $mg ║ \e[36;1m• Tanggal           :\e[0m$bd $tnggl"
 echo -e " $mg ║ \e[36;1m• IP VPS            :\e[0m$bd $IPVPS"
 echo -e " $mg ║ \e[36;1m• Domain            :\e[0m$bd $domain"
 echo -e  "  \e[31;1m__________________________________________________________________________"  | lolcat
 echo -e  "  ╠♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤╣" | lolcat
 echo -e  "  ║                     [ MENU TUNNELING ]                     ║" |lolcat
 echo -e  "  ╠♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤╣" | lolcat
 echo -e  "\e[31;2m_____________________________________________________________________________" | lolcat
 echo -e  " $gl ║\e[m$red 1$bl.\e[m$bd Menu Layanan SSH & OpenVPN       $bl                    ║"
 echo -e  " $gl ║\e[m$red 2$bl.\e[m$bd Menu Layanan SSTP - L2TP - PPTP - Wireguard      $bl    ║"
 echo -e  " $mg ║\e[m$red 3$bl.\e[m$bd Menu Layanan Shadowsocks & ShadowsocksR         $gl     ║"
 echo -e  " $mg ║\e[m$red 4$bl.\e[m$bd Menu Layanan V2ray Vmess & Vless            $gl         ║"
 echo -e  " $bl ║\e[m$red 5$bl.\e[m$bd Menu Layanan Trojan-Gfw & Trojan-GO       $mg           ║"
 echo -e  " $bl ║\e[m$red 6$bl.\e[m$bd Menu Backup         $mg                                 ║"
 echo -e  " $mg ║\e[m$red 7$bl.\e[m$bd Menu Konfigurasi System            $mg                  ║"
 echo -e  " $mg ║\e[m$red 8$bl.\e[m$bd Menu Pembaruan Script $gl Version $op($bl 2.0.4 $op) $mg║"
echo -e  "\e[1;32m╠♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤╣" | lolcat
 echo -e  "\e[31;1m_____________________________________________________________________________║" | lolcat
 echo -e  "     ║ x.   Exit                                                                    ║" | lolcat
 echo -e  "\e[1;32m╚♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤╝" | lolcat
 echo -e  "\e[31;1m_____________________________________________________________________________║"  | lolcat
echo -e  ""
read -p "  Select From Options [1-8 or x] :  " menu
echo -e   ""
echo -e   ""
echo -e   ""
case $menu in
1)
ssh
;;
2)
paneli
;;
3)
ssssr
;;
4)
v2raay
;;
5)
trojaan
;;
6)
bekap
;;
7)
system
;;
8)
update
;;
x)
exit
;;
*)
echo "Masukkan Nomor Yang Ada"
menu
;;
esac

