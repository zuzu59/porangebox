#!/usr/bin/env bash
# Petit script pour essayer de debugger le service de Piratebox qui à l'air de rentrer en conflit avec DietPi lors du boot
# zf170703.1510
# source: https://piratebox.cc/raspberry_pi:diy:manual
# source:https://drive.google.com/open?id=1zjeDeoYgZ2qk3BPvusyO1u31f3WmseL7WRlSVQT-IcQ

echo -------- debug start

systemctl stop piratebox.service
sleep 2

/etc/init.d/lighttpd stop
update-rc.d lighttpd remove
/etc/init.d/dnsmasq stop
update-rc.d dnsmasq remove
/etc/init.d/hostapd stop
update-rc.d hostapd remove

systemctl start piratebox.service
sleep 2
systemctl status piratebox.service
