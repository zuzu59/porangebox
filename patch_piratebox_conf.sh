#!/usr/bin/env bash
# Petit script tout simple pour patcher le fichier de conf de piratebox pour qu'au démarrage de piratebox il arrête
# en premier les services lighttpd, dnsmasq et hostap qui ont été redémarrés par DietPi lors du boot
# zf170703.2135
# source: https://piratebox.cc/raspberry_pi:diy:manual
# source:https://drive.google.com/open?id=1zjeDeoYgZ2qk3BPvusyO1u31f3WmseL7WRlSVQT-IcQ

echo -------- patch /etc/init.d/piratebox

apt-get install patch
patch -f /opt/piratebox/init.d/piratebox < conf.piratebox.diff
