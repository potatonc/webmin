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

	# Configuration server
echo "[Interface]
PrivateKey = ${privatekeyserver}
Address = 10.10.10.1/32
ListenPort = 29000
PostUp = sysctl -w net.ipv4.ip_forward=1; iptables -A FORWARD -i %i -j ACCEPT; iptables -t nat -A POSTROUTING -o $NIC -j MASQUERADE
PostDown = iptables -D FORWARD -i %i -j ACCEPT; iptables -t nat -D POSTROUTING -o $NIC -j MASQUERADE

[Peer]
PublicKey = ${publickeyclient}
AllowedIPs = 10.10.10.2/32" > /etc/wireguard/wg0.conf

	# Configuration client
	ip="10.10.0."$(expr $(cat /etc/anc/last-ip | tr "." " " | awk '{print $4}') + 1)
    echo $ip > /etc/anc/last-ip
    addr=$(cat /etc/anc/last-ip)
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
wg-quick up wg0
systemctl enable wg-quick@wg0.service
}
installWG
echo ""
echo "===================================================="
echo "|   Script Wireguard by Potato berhasil dipasang   |"
echo "===================================================="
echo ""
echo "   File konfigurasi wireguard :"
echo "    Download : http://${MYIP}:81/wg/potato.conf"
echo ""
echo ""
echo "----------------------------------------------------"
echo "           Terimakasih sudah menggunakan-"
echo "              Script Credit by Potato"
echo "----------------------------------------------------"
echo ""