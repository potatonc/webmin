#!/bin/bash
# Created by Potato

red='\033[0;31m'
green='\033[0;32m'
yellow='\033[0;33m'
plain='\033[0m'
blue='\033[0;34m'
ungu='\033[0;35m'
IP=$(wget -qO- ipv4.icanhazip.com);

if [ $# -lt 2 ]
then
clear
        echo ""
    echo " Perintah : "
    echo "   potato install debian9"
    echo "   potato install debian10"
    echo "   potato install ubuntu18"
    echo "   potato install shadowsocks"
    echo "   potato install ohp-ovpn"
    echo ""
        exit
fi

case "$1" in

install)
case $2 in
  debian9)
  clear
    echo ""
    echo " Apakah anda sudah memesan"
    echo " (username dan password)"
    echo " untuk mengakses |"
    echo -e " ${green}Script Tunneling Debian 9${plain}"
    echo ""
    read -p " Sudah memesan (y/n) ? " izin;
    echo ""
    if [[ $izin =~ ^([yY])$ ]]; then
      clear
echo "   '########:::'#######::'########::::'###::::'########::'#######::" | lolcat
echo "    ##.... ##:'##.... ##:... ##..::::'## ##:::... ##..::'##.... ##:" | lolcat
echo "    ##:::: ##: ##:::: ##:::: ##:::::'##:. ##::::: ##:::: ##:::: ##:" | lolcat
echo "    ########:: ##:::: ##:::: ##::::'##:::. ##:::: ##:::: ##:::: ##:" | lolcat
echo "    ##.....::: ##:::: ##:::: ##:::: #########:::: ##:::: ##:::: ##:" | lolcat
echo "    ##:::::::: ##:::: ##:::: ##:::: ##.... ##:::: ##:::: ##:::: ##:" | lolcat
echo "    ##::::::::. #######::::: ##:::: ##:::: ##:::: ##::::. #######::" | lolcat
echo "   ..::::::::::.......::::::..:::::..:::::..:::::..::::::.......:::" | lolcat
echo "   ================================================================" | lolcat
echo ""

cd && wget -O myvpn-deb9.sh "https://drive.google.com/uc?export=download&id=1700hRMyLQxtAQ8xzQ6FsfAzDnpnaM38e" && chmod +x myvpn-deb9.sh && ./myvpn-deb9.sh

    else
    echo "----------------------------------------"
      echo " Untuk pemesanan (username dan password)"
      echo ""
      echo " Hubungi :"
      echo -e "   ${yellow}Telegram   : @aldi_nc"
      echo -e "   ${yellow}Instagram  : @aldi_nc"
      echo ""
    fi
  ;;
  debian10)
  clear
    echo ""
    echo " Apakah anda sudah memesan"
    echo " (username dan password)"
    echo " untuk mengakses |"
    echo -e " ${green}Script Tunneling Debian 10${plain}"
    echo ""
    read -p " Sudah memesan (y/n) ? " izin;
    echo ""
    if [[ $izin =~ ^([yY])$ ]]; then
      clear
echo "   '########:::'#######::'########::::'###::::'########::'#######::" | lolcat
echo "    ##.... ##:'##.... ##:... ##..::::'## ##:::... ##..::'##.... ##:" | lolcat
echo "    ##:::: ##: ##:::: ##:::: ##:::::'##:. ##::::: ##:::: ##:::: ##:" | lolcat
echo "    ########:: ##:::: ##:::: ##::::'##:::. ##:::: ##:::: ##:::: ##:" | lolcat
echo "    ##.....::: ##:::: ##:::: ##:::: #########:::: ##:::: ##:::: ##:" | lolcat
echo "    ##:::::::: ##:::: ##:::: ##:::: ##.... ##:::: ##:::: ##:::: ##:" | lolcat
echo "    ##::::::::. #######::::: ##:::: ##:::: ##:::: ##::::. #######::" | lolcat
echo "   ..::::::::::.......::::::..:::::..:::::..:::::..::::::.......:::" | lolcat
echo "   ================================================================" | lolcat
echo ""

cd && wget -O myvpn-deb10.sh "https://drive.google.com/uc?export=download&id=172IZEgpubXQo33yAgBNKVY1cyKjEgqIz" && chmod +x myvpn-deb10.sh && ./myvpn-deb10.sh

    else
    echo "----------------------------------------"
      echo " Untuk pemesanan (username dan password)"
      echo ""
      echo " Hubungi :"
      echo -e "   ${yellow}Telegram   : @aldi_nc"
      echo -e "   ${yellow}Instagram  : @aldi_nc"
      echo ""
    fi
  ;;
  ubuntu18)
  clear
    echo ""
    echo " Apakah anda sudah memesan"
    echo " (username dan password)"
    echo " untuk mengakses |"
    echo -e " ${green}Script Tunneling Ubuntu 18.04${plain}"
    echo ""
    read -p " Sudah memesan (y/n) ? " izin;
    echo ""
    if [[ $izin =~ ^([yY])$ ]]; then
      clear
echo "   '########:::'#######::'########::::'###::::'########::'#######::" | lolcat
echo "    ##.... ##:'##.... ##:... ##..::::'## ##:::... ##..::'##.... ##:" | lolcat
echo "    ##:::: ##: ##:::: ##:::: ##:::::'##:. ##::::: ##:::: ##:::: ##:" | lolcat
echo "    ########:: ##:::: ##:::: ##::::'##:::. ##:::: ##:::: ##:::: ##:" | lolcat
echo "    ##.....::: ##:::: ##:::: ##:::: #########:::: ##:::: ##:::: ##:" | lolcat
echo "    ##:::::::: ##:::: ##:::: ##:::: ##.... ##:::: ##:::: ##:::: ##:" | lolcat
echo "    ##::::::::. #######::::: ##:::: ##:::: ##:::: ##::::. #######::" | lolcat
echo "   ..::::::::::.......::::::..:::::..:::::..:::::..::::::.......:::" | lolcat
echo "   ================================================================" | lolcat
echo ""

cd && wget -O myvpn-18.04.sh "https://drive.google.com/uc?export=download&id=173sttGru8wNTZTOmGgbVJEwMSo6rFOYf" && chmod +x myvpn-18.04.sh && ./myvpn-18.04.sh

    else
    echo "----------------------------------------"
      echo " Untuk pemesanan (username dan password)"
      echo ""
      echo " Hubungi :"
      echo -e "   ${yellow}Telegram   : @aldi_nc"
      echo -e "   ${yellow}Instagram  : @aldi_nc"
      echo ""
    fi
  ;;
  shadowsocks)
  clear
    echo ""
    echo " Apakah anda sudah memesan"
    echo " (username dan password)"
    echo " untuk mengakses |"
    echo -e " ${green}Script Shadowsocks${plain}"
    echo ""
    read -p " Sudah memesan (y/n) ? " izin;
    echo ""
    if [[ $izin =~ ^([yY])$ ]]; then
      clear
echo "   '########:::'#######::'########::::'###::::'########::'#######::" | lolcat
echo "    ##.... ##:'##.... ##:... ##..::::'## ##:::... ##..::'##.... ##:" | lolcat
echo "    ##:::: ##: ##:::: ##:::: ##:::::'##:. ##::::: ##:::: ##:::: ##:" | lolcat
echo "    ########:: ##:::: ##:::: ##::::'##:::. ##:::: ##:::: ##:::: ##:" | lolcat
echo "    ##.....::: ##:::: ##:::: ##:::: #########:::: ##:::: ##:::: ##:" | lolcat
echo "    ##:::::::: ##:::: ##:::: ##:::: ##.... ##:::: ##:::: ##:::: ##:" | lolcat
echo "    ##::::::::. #######::::: ##:::: ##:::: ##:::: ##::::. #######::" | lolcat
echo "   ..::::::::::.......::::::..:::::..:::::..:::::..::::::.......:::" | lolcat
echo "   ================================================================" | lolcat
echo ""

cd && wget -O ss.sh "https://drive.google.com/uc?export=download&id=15gjhSJFf2p40mFtm34t9UbbHK3UjFWGO" && chmod +x ss.sh && ./ss.sh

    else
    echo "----------------------------------------"
      echo " Untuk pemesanan (username dan password)"
      echo ""
      echo " Hubungi :"
      echo -e "   ${yellow}Telegram   : @aldi_nc"
      echo -e "   ${yellow}Instagram  : @aldi_nc"
      echo ""
    fi
  ;;
  ohp-ovpn)
  clear
  echo ""
    echo " Apakah anda sudah memesan"
    echo " (username dan password)"
    echo " untuk mengakses |"
    echo -e " ${green}ohp-ovpn${plain}"
    echo ""
    read -p " Sudah memesan (y/n) ? " izin;
    echo ""
    if [[ $izin =~ ^([yY])$ ]]; then
      clear
echo "   '########:::'#######::'########::::'###::::'########::'#######::" | lolcat
echo "    ##.... ##:'##.... ##:... ##..::::'## ##:::... ##..::'##.... ##:" | lolcat
echo "    ##:::: ##: ##:::: ##:::: ##:::::'##:. ##::::: ##:::: ##:::: ##:" | lolcat
echo "    ########:: ##:::: ##:::: ##::::'##:::. ##:::: ##:::: ##:::: ##:" | lolcat
echo "    ##.....::: ##:::: ##:::: ##:::: #########:::: ##:::: ##:::: ##:" | lolcat
echo "    ##:::::::: ##:::: ##:::: ##:::: ##.... ##:::: ##:::: ##:::: ##:" | lolcat
echo "    ##::::::::. #######::::: ##:::: ##:::: ##:::: ##::::. #######::" | lolcat
echo "   ..::::::::::.......::::::..:::::..:::::..:::::..::::::.......:::" | lolcat
echo "   ================================================================" | lolcat
echo ""

cd /usr/sbin
wget https://github.com/potatonc/webmin/raw/master/potatohp
chmod +x potatohp


# Get the "public" interface from the default route
NIC=$(ip -4 route ls | grep default | grep -Po '(?<=dev )(\S+)' | head -1)
  # initializing var
export DEBIAN_FRONTEND=noninteractive
OS=`uname -m`;
MYIP=$(wget -qO- ipv4.icanhazip.com);
MYIP2="s/aldiblues/$MYIP/g";
# konfigurasi client
wget https://github.com/potatonc/webmin/raw/master/potato-ohp.ovpn

if [ ! -e /home/vps/public_html ]; then
  exit 0
else
cp potato-ohp.ovpn /home/vps/public_html/
fi

if [ ! -e /var/www/html ]; then
  exit 0
else
mv potato-ohp.ovpn /var/www/html/
fi
rm potato-ohp.ovpn

if [ ! -e /home/vps/public_html/potato-ohp.ovpn ]; then
  exit 0
else
sed -i $MYIP2 /home/vps/public_html/potato-ohp.ovpn
fi

if [ ! -e /var/www/html/potato-ohp.ovpn ]; then
  exit 0
else
sed -i $MYIP2 /var/www/html/potato-ohp.ovpn
fi

# import ca
if [ ! -e /etc/openvpn/ca.crt ]; then
  exit 0
else
{
echo "<ca>"
cat "/etc/openvpn/ca.crt"
echo "</ca>"
} >>/home/vps/public_html/potato-ohp.ovpn
fi

if [ ! -e /etc/openvpn/server/ca.crt ]; then
  exit 0
else
{
echo "<ca>"
cat "/etc/openvpn/server/ca.crt"
echo "</ca>"
} >>/home/vps/public_html/potato-ohp.ovpn
fi

if [ ! -e /etc/openvpn/ca.crt ]; then
  exit 0
else
{
echo "<ca>"
cat "/etc/openvpn/ca.crt"
echo "</ca>"
} >>/var/www/html/potato-ohp.ovpn
fi

if [ ! -e /etc/openvpn/server/ca.crt ]; then
  exit 0
else
{
echo "<ca>"
cat "/etc/openvpn/server/ca.crt"
echo "</ca>"
} >>/var/www/html/potato-ohp.ovpn
fi

# Edit file /etc/systemd/system/potato-ohp.service

# get /etc/potato.ohp
cd /etc/
wget https://github.com/potatonc/webmin/raw/master/potato.ohp

# Ubah izin akses
chmod +x /etc/potato.ohp

if [ ! -e /etc/systemd/system/potato-ohp.service ]; then
cat > /etc/systemd/system/potato-ohp.service <<-END
[Unit]
Description=/etc/potato.ohp
ConditionPathExists=/etc/potato.ohp
[Service]
Type=forking
ExecStart=/etc/potato.ohp start
TimeoutSec=0
StandardOutput=tty
RemainAfterExit=yes
SysVStartPriority=99
[Install]
WantedBy=multi-user.target
END
else
  exit 0
fi

cd

# enable rc local
systemctl enable potato-ohp
systemctl start potato-ohp
systemctl start potato-ohp.service

clear
  echo -e ""
  echo -e " =====================================================" | lolcat
  echo -e " |           Script VPS Tunneling by Potato          |" | lolcat
  echo -e " =====================================================" | lolcat
  echo -e ""
  echo -e " Link OHP  : http://$MYIP:81/potato-ohp.ovpn"
  echo -e "" 
  echo -e "        ---------------------------------------"
  echo -e "             Terimakasih sudah menggunakan-"
  echo -e "                Script Credit by Potato"
  echo -e "        ---------------------------------------"
  echo -e ""

else
    echo "----------------------------------------"
      echo " Untuk pemesanan (username dan password)"
      echo ""
      echo " Hubungi :"
      echo -e "   ${yellow}Telegram   : @aldi_nc"
      echo -e "   ${yellow}Instagram  : @aldi_nc"
      echo ""
fi

  ;;
  *)
  clear
    echo ""
    echo " Perintah : "
    echo "   potato install debian9"
    echo "   potato install debian10"
    echo "   potato install ubuntu18"
    echo "   potato install shadowsocks"
    echo "   potato install ohp-ovpn"
    echo ""
  ;;
esac
;;
*)
clear
    echo ""
    echo " Perintah : "
    echo "   potato install debian9"
    echo "   potato install debian10"
    echo "   potato install ubuntu18"
    echo "   potato install shadowsocks"
    echo "   potato install ohp-ovpn"
    echo ""
   ;;
esac
