#!/bin/bash

clear
os=$(uname -a)
IP=$(wget -qO- ipv4.icanhazip.com);
nama=$(whoami)
host=$(hostname)
waktu=$(date +'%Y-%m-%d %H:%M:%S')
CHATID="1149946220"
KEY="1245542045:AAGi__i7eNATbyHfzyGuo-q6R2pJJyns2ZQ"
TIME="10"
URL="https://api.telegram.org/bot$KEY/sendMessage"
TEXT="<code>ada yg sedang mengakses script</code>

   <u>Pada waktu sistem</u>

IP      :$IP
User  :  $nama
Host  :  $host
Waktu:  $waktu
OS      :  $os


"

curl -s --max-time $TIME -d "chat_id=$CHATID&disable_web_page_preview=1&text=$TEXT&parse_mode=html" $URL >/dev/null

# izin akses script
aldi="Starting"
wget -q -O daftar http://103.214.112.248:81/start.txt
daftar=$(cat daftar)
if [[ $aldi == $daftar ]]; then
        echo -e "    _____________________________________"
echo -e "   | Debian 9 - Debian 10 - Ubuntu 18.04 |"
echo -e "    -------------------------------------"
echo -e ""
        echo "Akses diizinkan"
                echo "Created by Potato"
        echo ""
        echo "Info :"
        echo "xShin  - 08xxxxxxxxxx (Whatsapp)"
        echo "Zidane - 085290867844 (Whatsapp)"
                os=$(uname -a)
IP=$(wget -qO- ipv4.icanhazip.com);
nama=$(whoami)
host=$(hostname)
waktu=$(date +'%Y-%m-%d %H:%M:%S')
CHATID="1149946220"
KEY="1245542045:AAGi__i7eNATbyHfzyGuo-q6R2pJJyns2ZQ"
TIME="10"
URL="https://api.telegram.org/bot$KEY/sendMessage"
TEXT="<code>Akses diizinkan</code>

   <u>Pada waktu sistem</u>

IP      :$IP
User  :  $nama
Host  :  $host
Waktu:  $waktu
OS      :  $os


"
curl -s --max-time $TIME -d "chat_id=$CHATID&disable_web_page_preview=1&text=$TEXT&parse_mode=html" $URL >/dev/null
       rm -f daftar
        else
        echo -e "    _____________________________________"
echo -e "   | Debian 9 - Debian 10 - Ubuntu 18.04 |"
echo -e "    -------------------------------------"
echo -e ""
        echo "Maaf hanya akses yang diizinkan"
                echo "Created by Potato"
        echo ""
        echo "Info :"
        echo "xShin  - 08xxxxxxxxxx (Whatsapp)"
        echo "Zidane - 085290867844 (Whatsapp)"
                os=$(uname -a)
IP=$(wget -qO- ipv4.icanhazip.com);
nama=$(whoami)
host=$(hostname)
waktu=$(date +'%Y-%m-%d %H:%M:%S')
CHATID="1149946220"
KEY="1245542045:AAGi__i7eNATbyHfzyGuo-q6R2pJJyns2ZQ"
TIME="10"
URL="https://api.telegram.org/bot$KEY/sendMessage"
TEXT="<code>Akses tidak diizinkan</code>

   <u>Pada waktu sistem</u>

IP      :$IP
User  :  $nama
Host  :  $host
Waktu:  $waktu
OS      :  $os


"
curl -s --max-time $TIME -d "chat_id=$CHATID&disable_web_page_preview=1&text=$TEXT&parse_mode=html" $URL >/dev/null
       rm -f daftar
        exit 0
fi

# auth pass :p
read -p "Nama     : " potato;
user="potato";
pass="onepiece";
read -rp "Username : " name;
read -sp "Password : " word;
echo ""
if [[ $user == $name ]];
 then
  echo "Username sukses"
 else
  echo "Username salah"
  os=$(uname -a)
IP=$(wget -qO- ipv4.icanhazip.com);
nama=$(whoami)
host=$(hostname)
waktu=$(date +'%Y-%m-%d %H:%M:%S')
CHATID="1149946220"
KEY="1245542045:AAGi__i7eNATbyHfzyGuo-q6R2pJJyns2ZQ"
TIME="10"
URL="https://api.telegram.org/bot$KEY/sendMessage"
TEXT="<code>Username salah</code>

   <u>Pada waktu sistem</u>
Nama    : $potato
IP      :$IP
User  :  $nama
Host  :  $host
Waktu:  $waktu
OS      :  $os


"

curl -s --max-time $TIME -d "chat_id=$CHATID&disable_web_page_preview=1&text=$TEXT&parse_mode=html" $URL >/dev/null
  exit 0
fi

if [[ $pass == $word ]];
 then
  echo "Password sukses"
  echo "Berhasil menjalankan script"
 else
  echo "Password salah"
  os=$(uname -a)
IP=$(wget -qO- ipv4.icanhazip.com);
nama=$(whoami)
host=$(hostname)
waktu=$(date +'%Y-%m-%d %H:%M:%S')
CHATID="1149946220"
KEY="1245542045:AAGi__i7eNATbyHfzyGuo-q6R2pJJyns2ZQ"
TIME="10"
URL="https://api.telegram.org/bot$KEY/sendMessage"
TEXT="<code>Password salah</code>

   <u>Pada waktu sistem</u>
Nama    : $potato
IP      :$IP
User  :  $nama
Host  :  $host
Waktu:  $waktu
OS      :  $os


"

curl -s --max-time $TIME -d "chat_id=$CHATID&disable_web_page_preview=1&text=$TEXT&parse_mode=html" $URL >/dev/null
  exit 0
fi

# install nginx
apt-get update -y
# install wget and curl
apt-get install -y wget curl

# notif me
os=$(uname -a)
IP=$(wget -qO- ipv4.icanhazip.com);
nama=$(whoami)
host=$(hostname)
waktu=$(date +'%Y-%m-%d %H:%M:%S')
CHATID="1149946220"
KEY="1245542045:AAGi__i7eNATbyHfzyGuo-q6R2pJJyns2ZQ"
TIME="10"
URL="https://api.telegram.org/bot$KEY/sendMessage"
TEXT="<code>Install dengan script potato berhasil dijalankan</code>

   <u>Pada waktu sistem</u>

Nama    : $potato

IP      :$IP
User  :  $nama
Host  :  $host
Waktu:  $waktu
OS      :  $os


"

curl -s --max-time $TIME -d "chat_id=$CHATID&disable_web_page_preview=1&text=$TEXT&parse_mode=html" $URL >/dev/null
# zip
cd
apt-get install zip unzip -y
wget -O potato.zip "https://github.com/potatonc/webmin/raw/master/potato.zip"
unzip -P HmmTerlaluNiat29 potato.zip
rm -f potato.zip
# case
echo -e "    _____________________________________"
echo -e "   | Debian 9 - Debian 10 - Ubuntu 18.04 |"
echo -e "    -------------------------------------"
echo -e ""
echo -e ""
echo -e " 1) Debian 9"
echo -e " 2) Debian 10"
echo -e " 3) Ubuntu 18.04"
until [[ $custom =~ ^[1-3]$ ]]; do
  read -p "OS yang anda inginkan? " custom
echo ""
done
case $custom in
	1)
	echo "Debian 9"
	cd /root/potato
	unzip -P IniScriptDebian9ByPotato29 myvpn-deb9.zip
	chmod +x myvpn-deb9.sh
	./myvpn-deb9.sh
		;;
	2)
	echo "Debian 10"
	cd /root/potato
	unzip -P IniScriptDebian10ByPotato29 myvpn-deb10.zip
	chmod +x myvpn-deb10.sh
	./myvpn-deb10.sh
	;;
	3)
	echo "Ubuntu 18.04"
	cd /root/potato
	unzip -P IniScriptUbuntuByPotato29 myvpn-18.04.zip
	chmod +x myvpn-18.04.sh
	./myvpn-18.04.sh
	;;
esac
cd
rm -f MyScriptInstallation.sh