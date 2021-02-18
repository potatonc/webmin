#!/bin/bash
# cronjob
# Script Credit by Potato

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

echo ""
echo "  1) Create User"
echo "  2) Delete User"
echo ""
 until [[ $pilihan =~ ^[0-2]$ ]]; do
   read -rp "    Pilihan   :   " pilihan
 done
   case $pilihan in
      1)
echo ""
read -rp "    Nama : " name
read -rp "    Exp  : " exp
cekname=$(cat /var/www/html/wg/*.conf | grep "$name")
echo ""
if [[ $name == $cekname ]]; then
	echo ""
	echo "    Please wait..."
	sleep 2
	echo ""
    echo "    Opss.. Nama sudah ada."
    echo ""
	echo -e "    Silhakan cek ${green}memberwg${plain}"
	echo ""
	echo ""
echo "----------------------------------------------------"
echo "           Terimakasih sudah menggunakan-"
echo "              Script Credit by Potato"
echo "----------------------------------------------------"
echo ""
    exit 0
else
	echo ""
	echo "  Please wait..."
	sleep 2
	echo ""
	echo -e "  Sedang membuat user ${red}${name}${plain}, harap tunggu..."
	sleep 2
	echo ""
		date=$(date -d "$exp days" +"%Y-%m-%d")
	ip="10.10.10."$(expr $(cat /etc/anc/last-ip | tr "." " " | awk '{print $4}') + 1)
    echo "$ip" > /etc/anc/last-ip
    addr=$(cat /etc/anc/last-ip)
    
    cd /etc/wireguard/client
    wg genkey | tee ${name}_privatekey | wg pubkey > ${name}_publickey
    privkey=$(cat ${name}_privatekey)
    pubkey=$(cat ${name}_publickey)
	pubkeyserver=$(cat /etc/wireguard/keys/publickey)

	    echo "[Interface]
    PrivateKey = ${privkey}
    Address = ${addr}/32
    DNS = 1.1.1.1

    [Peer]
    PublicKey = ${pubkeyserver}
    Endpoint = $MYIP:29000
    AllowedIPs = 0.0.0.0/0
    PersistentKeepalive = 25" > /var/www/html/wg/${name}.conf
    
    echo "[Peer]
    PublicKey = ${pubkey}
    AllowedIPs = ${addr}/32" >> /etc/wireguard/wg0.conf

echo "$date" > /var/www/html/wg/${name}.date

tgl=$(cut -b 9,10 /var/www/html/wg/${name}.date)
bln=$(cut -b 6,7 /var/www/html/wg/${name}.date)
bln0=$(cut -b 7 /var/www/html/wg/${name}.date)
val=$(cut -b 6 /var/www/html/wg/${name}.date)
if [[ $val == 0 ]]; then
     echo "* * $tgl $bln0 * /var/www/html/wg/${name}del.sh" >> /etc/cron.d/wg
     echo "#!/bin/bash
     rm /var/www/html/wg/{$name.conf,$name.date}
     sed -i '/\/var\/www\/html\/wg\/${name}del.sh/d' /etc/cron.d/wg
     rm /var/www/html/wg/${name}del.sh" > /var/www/html/wg/${name}del.sh
else
     echo "* * $tgl $bln * /var/www/html/wg/${name}del.sh" >> /etc/cron.d/wg
     echo "#!/bin/bash
     rm /var/www/html/wg/{$name.conf,$name.date}
     sed -i '/\/var\/www\/html\/wg\/${name}del.sh/d' /etc/cron.d/wg
     rm /var/www/html/wg/${name}del.sh" > /var/www/html/wg/${name}del.sh
fi
systemctl restart wg-quick@wg0.service
fi
chmod +x /var/www/html/wg/${name}del.sh
chmod +x /etc/cron.d/wg
sleep 2
clear
echo ""
echo "===================================================="
echo "|                 Account Created                  |"
echo "===================================================="
echo ""
echo "      Name     : $name"
echo "      Exp      : $date"
echo "      Config   : http://${MYIP}:81/wg/${name}.conf"
echo ""
echo ""
echo "----------------------------------------------------"
echo "           Terimakasih sudah menggunakan-"
echo "              Script Credit by Potato"
echo "----------------------------------------------------"
echo ""
      ;;
      2)
echo ""
echo "===================================================="
echo "|                   Delete Users                   |"
echo "===================================================="
echo ""
read -rp "     Name  :  " cek
echo ""
cekuser="/var/www/html/wg/${cek}del.sh"
  if [[ -f "$cekuser" ]]; then
    chmod +x /var/www/html/wg/${cek}del.sh
	cd /var/www/html/wg/
    ./${cek}del.sh
    sleep 2
    echo ""
    echo -e "     User ${red}${cek}${plain} berhasil dihapus..."
    echo ""
	echo ""
echo "----------------------------------------------------"
echo "           Terimakasih sudah menggunakan-"
echo "              Script Credit by Potato"
echo "----------------------------------------------------"
echo ""
  else
    echo ""
    echo "      User $cek tidak ada..."
    echo -e "     Silahkan cek ${green}memberwg${plain}..."
    echo ""
	echo ""
echo "----------------------------------------------------"
echo "           Terimakasih sudah menggunakan-"
echo "              Script Credit by Potato"
echo "----------------------------------------------------"
echo ""
  fi
      ;;
   esac
