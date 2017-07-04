#!/usr/bin/env bash
# Petit script tout simple pour redémarrer le service piratebox
# zf170704.1610
# source: https://piratebox.cc/raspberry_pi:diy:manual
# source:https://drive.google.com/open?id=1zjeDeoYgZ2qk3BPvusyO1u31f3WmseL7WRlSVQT-IcQ

echo -------- start piratebox service

systemctl stop piratebox.service
sleep 1
systemctl start piratebox.service
sleep 2
systemctl status piratebox.service
