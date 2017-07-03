#!/usr/bin/env bash
# Petit script tout simple pour patcher le fichier de conf de hostap afin d'enclencher le WIFI 802.11n
# zf170703.2143
# source: https://piratebox.cc/raspberry_pi:diy:manual
# source:https://drive.google.com/open?id=1zjeDeoYgZ2qk3BPvusyO1u31f3WmseL7WRlSVQT-IcQ

echo -------- patch /opt/piratebox/conf/hostapd.conf

apt-get install patch
patch -f /opt/piratebox/conf/hostapd.conf < hostapd.conf.diff
