#!/bin/bash
# include fitur by Potato
# Installation Wireguard by Potato

function installWG() {
	# Get the "public" interface from the default route
NIC=$(ip -4 route ls | grep default | grep -Po '(?<=dev )(\S+)' | head -1)
  # initializing var
export DEBIAN_FRONTEND=noninteractive
OS=`uname -m`;
MYIP=$(wget -qO- ipv4.icanhazip.com);
MYIP2="s/aldiblues/$MYIP/g";

red='\033[0;31m'
green='\033[0;32m'
yellow='\033[0;33m'
plain='\033[0m'
blue='\033[0;34m'
ungu='\033[0;35m'

mkdir -p /etc/anc/memberwg
mkdir -p /var/www/html/wg
echo "10.10.10.1" > /etc/anc/last-ip

	# Installation
apt-get update -y
apt-get install wireguard -y
modprobe wireguard

	# directory and genkey server
mkdir -p /etc/wireguard/keys
cd /etc/wireguard/keys
umask 077
wg genkey | tee privatekey | wg pubkey > publickey

	# directory and genkey client
cd /etc/wireguard
mkdir -p client
cd /etc/wireguard/client
umask 077
wg genkey | tee privatekey | wg pubkey > publickey

	# value privatekeyclient
privatekeyclient=$(cat /etc/wireguard/client/privatekey)
	# value publickeyclient
publickeyclient=$(cat /etc/wireguard/client/publickey)
	# value publickeyserver
publickeyserver=$(cat /etc/wireguard/keys/publickey)
	# value privatekeyserver
privatekeyserver=$(cat /etc/wireguard/keys/privatekey)

	# last-ip
	ip="10.10.10."$(expr $(cat /etc/anc/last-ip | tr "." " " | awk '{print $4}') + 1)
    echo "$ip" > /etc/anc/last-ip
    addr=$(cat /etc/anc/last-ip)

	# Configuration server
echo "[Interface]
PrivateKey = ${privatekeyserver}
Address = 10.10.10.1/32
ListenPort = 29000
PostUp = sysctl -w net.ipv4.ip_forward=1; iptables -A FORWARD -i %i -j ACCEPT; iptables -t nat -A POSTROUTING -o $NIC -j MASQUERADE
PostDown = iptables -D FORWARD -i %i -j ACCEPT; iptables -t nat -D POSTROUTING -o $NIC -j MASQUERADE

[Peer]
PublicKey = ${publickeyclient}
AllowedIPs = $addr/32" > /etc/wireguard/wg0.conf

	# Configuration client
echo "[Interface]
PrivateKey = ${privatekeyclient}
Address = $addr/32
DNS = 1.1.1.1

[Peer]
PublicKey = ${publickeyserver}
Endpoint = $MYIP:29000
AllowedIPs = 0.0.0.0/0
PersistentKeepalive = 25" > /var/www/html/wg/potato.conf

	# Start WG
systemctl enable wg-quick@wg0.service
wg-quick up wg0
wg-quick down wg0
systemctl restart wg-quick@wg0.service
}
installWG
mkdir -p /etc/anc/memberwg
echo "
      Name     :  Potato
	  Expired  :  Never
	  " > /etc/anc/memberwg/potato
cd /usr/bin
wget -O memberwg "https://github.com/potatonc/webmin/raw/master/memberwg.sh"
wget -O userwg "https://github.com/potatonc/webmin/raw/master/userwg.sh"
chmod +x memberwg
chmod +x userwg
clear
echo ""
echo "===================================================="
echo "|   Script Wireguard by Potato berhasil dipasang   |"
echo "===================================================="
echo ""
echo "   File konfigurasi wireguard :"
echo "    Download : http://${MYIP}:81/wg/potato.conf"
echo ""
echo "   Perintah :"
echo -e "    ${green}userwg${plain}   - membuat user baru dan menghapus user"
echo -e "    ${green}memberwg${plain} - melihat daftar user yang sudah dibuat"
echo ""
echo "----------------------------------------------------"
echo "           Terimakasih sudah menggunakan-"
echo "              Script Credit by Potato"
echo "----------------------------------------------------"
echo ""
cd
rm potatowg.sh