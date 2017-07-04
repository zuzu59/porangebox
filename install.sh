#!/usr/bin/env bash
# Petit script tout simple pour installer le soft PirateBox sur son OrangePi Zero avec DietPi comme OS
# zf170704.1634
# source: https://piratebox.cc/raspberry_pi:diy:manual

echo -------- installation des packages de base
#apt-get update
apt-get install python iptables
apt-get install lighttpd
/etc/init.d/lighttpd stop
update-rc.d lighttpd remove
apt-get install dnsmasq
/etc/init.d/dnsmasq stop
update-rc.d dnsmasq remove
apt-get install hostapd
/etc/init.d/hostapd stop
update-rc.d hostapd remove
apt-get install iw php5-cli php5-cgi
rm /bin/sh
ln /bin/bash /bin/sh
chmod a+rx /bin/sh

echo -------- installation modifie la config réseau
./patch_interfaces.sh

echo -------- installation le soft PirateBox
wget http://downloads.piratebox.de/piratebox-ws_current.tar.gz
tar xzf piratebox-ws_current.tar.gz
cd piratebox
mkdir -p /opt
cp -rv piratebox /opt
cd /opt/piratebox
sed 's:DROOPY_USE_USER="no":DROOPY_USE_USER="yes":' -i /opt/piratebox/conf/piratebox.conf
ln -s /opt/piratebox/init.d/piratebox /etc/init.d/piratebox
update-rc.d piratebox defaults 

cd ~/porangebox
echo -------- patch le démarrage de piratebox pour arrêter en premier les services lighttpd dnsmasq et hostap qui ont été redémarrés par DietPi lors du boot
#./patch_piratebox_conf.sh

echo "-------- patch le fichier de conf de hostap afin d'enclencher le WIFI 802.11n"
./patch_hostapd_conf.sh

echo -------- démarre le service piratebox
#/etc/init.d/piratebox start
systemctl daemon-reload
./start.sh

