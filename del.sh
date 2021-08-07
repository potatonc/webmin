#!/bin/bash

systemctl stop potato-ohp
systemctl disable potato-ohp
systemctl disable potato-ohp.service
rm /etc/potato.ohp
rm /usr/sbin/potatohp
rm /etc/systemd/system/potato-ohp.service
rm /var/www/html/potato-ohp.ovpn
rm /home/vps/public_html/potato-ohp.ovpn
