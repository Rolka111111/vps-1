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
MYIP=$(wget -qO- ifconfig.me/ip);
echo -e "checking vps"
NUMBER_OF_CLIENTS=$(grep -c -E "^### " "/etc/xray/v2ray-tls.json")
	if [[ ${NUMBER_OF_CLIENTS} == '0' ]]; then
		echo ""
		echo "You have no existing clients!"
		exit 1
	fi

	clear
	echo ""
	echo " Select the existing client you want to remove"
	echo " Press CTRL+C to return"
	echo " ♤♤♤♤♤♤♤♤♤♤♡♡♡♡♡♡♡♤"
	echo "   nggak ada pengguna kadal"
	grep -E "^### " "/etc/xray/v2ray-tls.json" | cut -d ' ' -f 2-3 | nl -s ') '
	until [[ ${CLIENT_NUMBER} -ge 1 && ${CLIENT_NUMBER} -le ${NUMBER_OF_CLIENTS} ]]; do
		if [[ ${CLIENT_NUMBER} == '1' ]]; then
			read -rp "Select one client [1]: " CLIENT_NUMBER
		else
			read -rp "Select one client [1-${NUMBER_OF_CLIENTS}]: " CLIENT_NUMBER
		fi
	done
user=$(grep -E "^### " "/etc/xray/v2ray-tls.json" | cut -d ' ' -f 2 | sed -n "${CLIENT_NUMBER}"p)
exp=$(grep -E "^### " "/etc/xray/v2ray-tls.json" | cut -d ' ' -f 3 | sed -n "${CLIENT_NUMBER}"p)
sed -i "/^### $user $exp/,/^},{/d" /etc/xray/v2ray-tls.json
sed -i "/^### $user $exp/,/^},{/d" /etc/xray/v2ray-nontls.json
rm -f /etc/xray/v2ray-$user-tls.json /etc/xray/v2ray-$user-nontls.json
systemctl restart xray@v2ray-tls
systemctl restart xray@v2ray-nontls
clear
echo ""
echo "♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤"
echo "      Vmess Akun Dihapus"
echo "♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤"
echo "Username  : $user"
echo "Expired   : $exp"
echo "♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤♤"
echo "Repacked By gandring"
menu
fi
