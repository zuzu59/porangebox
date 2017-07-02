#!/usr/bin/env bash
# Petit script tout simple pour arrêter le service piratebox
# zf170702.1246
# source: https://piratebox.cc/raspberry_pi:diy:manual
# source:https://drive.google.com/open?id=1zjeDeoYgZ2qk3BPvusyO1u31f3WmseL7WRlSVQT-IcQ

echo -------- stop piratebox service

systemctl stop piratebox.service
sleep 2
systemctl status piratebox.service
