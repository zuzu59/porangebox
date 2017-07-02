#!/usr/bin/env bash
# Petit script tout simple pour patcher le fichier /etc/network/interfaces pour installer le soft PirateBox sur son OrangePi Zero avec DietPi comme OS
# zf170702.1140
# source: https://piratebox.cc/raspberry_pi:diy:manual
# source:https://drive.google.com/open?id=1zjeDeoYgZ2qk3BPvusyO1u31f3WmseL7WRlSVQT-IcQ

echo -------- patch /etc/network/interfaces

apt-get install patch
patch -f /etc/network/interfaces < interfaces.diff
