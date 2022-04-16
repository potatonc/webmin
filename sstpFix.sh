#!/bin/bash

## SSTP
cekVirt=$(systemctl is-active accel-ppp)
  if [[ ${cekVirt} == 'inactive' ]]; then
source /etc/os-release
OS=$ID
ver=$VERSION_ID
if [[ $OS == 'debian' ]]; then
if [[ "$ver" = "9" ]]; then
yoi=Debian9
cd /opt/accel-ppp-code/build/
mkdir anc
cd anc
git clone https://github.com/accel-ppp/accel-ppp.git
cd accel-ppp
mkdir build
cd build
cmake -DBUILD_IPOE_DRIVER=TRUE -DBUILD_VLAN_MON_DRIVER=TRUE -DCMAKE_INSTALL_PREFIX=/usr -DKDIR=/usr/src/linux-headers-`uname -r` -DLUA=TRUE -DCPACK_TYPE=$yoi ..
make
cpack -G DEB
dpkg -i accel-ppp.deb
systemctl enable accel-ppp >> /dev/null 2>&1
systemctl start accel-ppp >> /dev/null 2>&1
elif [[ "$ver" = "10" ]]; then
yoi=Debian10
cd /opt/accel-ppp-code/build/
mkdir anc
cd anc
git clone https://github.com/accel-ppp/accel-ppp.git
cd accel-ppp
mkdir build
cd build
cmake -DBUILD_IPOE_DRIVER=TRUE -DBUILD_VLAN_MON_DRIVER=TRUE -DCMAKE_INSTALL_PREFIX=/usr -DKDIR=/usr/src/linux-headers-`uname -r` -DLUA=TRUE -DCPACK_TYPE=$yoi ..
make
cpack -G DEB
dpkg -i accel-ppp.deb
systemctl enable accel-ppp >> /dev/null 2>&1
systemctl start accel-ppp >> /dev/null 2>&1
fi
fi
fi