#!/usr/bin/env bash
# Petit script tout simple pour afficher le status du service piratebox
# zf170702.1140
# source: https://piratebox.cc/raspberry_pi:diy:manual
# source:https://drive.google.com/open?id=1zjeDeoYgZ2qk3BPvusyO1u31f3WmseL7WRlSVQT-IcQ

echo -------- status piratebox service

systemctl status piratebox.service
