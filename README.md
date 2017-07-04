# porangebox
Pirate Box for Orange Pi Zero

ATTENTION: Il faut lire en premier:

[https://github.com/zuzu59/porangebox/blob/master/readme_state.md](https://github.com/zuzu59/porangebox/blob/master/readme_state.md)

For now, details are on the wiki:

[https://github.com/epfl-dojo/porangebox/wiki](https://github.com/epfl-dojo/porangebox/wiki)





# En vrac pour le MAC


----
brew install p7zip
brew install pv
sudo -s
dd if=DietPi_v145_OrangePiZero-armv7-\(Jessie\).img | pv -s 450M | dd bs=4096 of=/dev/disk1

utiliser net-sharing pour partager la connexion Internet de son portable avec l'OrangePi
https://github.com/zuzu59/net-sharinghttps://github.com/zuzu59/net-sharing

ls -al /dev > t1
connecter le serial USB
ls -al /dev > t2
diff t1 t2
voir quel device utiliser pour le screen

screen /dev/tty.usbserial-FTB6SPL3 115200
CTRL-a, k pour sortir de screen !

Installation du soft PirateBox

https://piratebox.cc/raspberry_pi:diy:manual
---
