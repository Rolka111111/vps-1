#!/bin/bash
# My Telegram : https://t.me/pegasusq_governor
# ==========================================
# Color
RED='\033[0;31m'
NC='\033[0m'
GREEN='\033[0;32m'
ORANGE='\033[0;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
LIGHT='\033[0;37m'
# ==========================================
# Getting
IP=$(wget -qO- ipinfo.io/ip);
domain=$(cat /etc/xray/domain)
clear
IP=$(wget -qO- ipinfo.io/ip);
ssl="$(cat ~/log-install.txt | grep -w "Stunnel5" | cut -d: -f2)"
sqd="$(cat ~/log-install.txt | grep -w "Squid" | cut -d: -f2)"
ovpn="$(netstat -nlpt | grep -i openvpn | grep -i 0.0.0.0 | awk '{print $4}' | cut -d: -f2)"
ovpn2="$(netstat -nlpu | grep -i openvpn | grep -i 0.0.0.0 | awk '{print $4}' | cut -d: -f2)"
Login=Trial`</dev/urandom tr -dc X-Z0-9 | head -c4`
hari="1"
Pass=1
clear
systemctl restart ws-tls
systemctl restart ws-nontls
systemctl restart ssh-ohp
systemctl restart dropbear-ohp
systemctl restart openvpn-ohp
useradd -e `date -d "$masaaktif days" +"%Y-%m-%d"` -s /bin/false -M $Login
exp="$(chage -l $Login | grep "Account expires" | awk -F": " '{print $2}')"
hariini=`date -d "0 days" +"%Y-%m-%d"`
expi=`date -d "$masaaktif days" +"%Y-%m-%d"`
echo -e "$Pass\n$Pass\n"|passwd $Login &> /dev/null
echo -e ""
echo -e "♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤"
echo -e " Informasi Trial SSH & OpenVPN"
echo -e "♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤"
echo -e "IP/Host       : $IP"
echo -e "Domain        : $domain"
echo -e "Username      : $Login"
echo -e "Password      : $Pass"
echo -e "OpenSSH       : 222, 22"
echo -e "Dropbear      : 389, 390"
echo -e "SSL/TLS       : $ssl"
echo -e "Privoxy       : 3000"
echo -e "Port Squid    : $sqd"
echo -e "Ssh Ws SSL    : 2083"
echo -e "Ssh Ws No SSL : 8880"
echo -e "Ovpn Ws       : 2086"
echo -e "Port TCP      : $ovpn"
echo -e "Port UDP      : $ovpn2"
echo -e "Port SSL      : 3269"
echo -e "BadVpn/Udpgw: 7100-7200-upto 7900"
echo -e "OVPN TCP: http://$IP:88/config-tcp.ovpn"
echo -e "OVPN UDP: http://$IP:88/config-udp.ovpn"
echo -e "OVPN SSL: http://$IP:88/config-ssl.ovpn"
echo -e "Created       : $hariini"
echo -e "Expired       : $expi"
echo -e "♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤"
echo -e "Payload Websocket"
echo -e "♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤"
echo -e "CONNECT wss://bugmu.com /HTTP/1.1[crlf]Host: ${domain}[crlf]Upgrade: websocket[crlf][crlf]"
echo -e "♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤"
echo -e "Luxury Edition by @zerossl"
