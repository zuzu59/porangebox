zf170702.1254

Alors il y a encore des petis problèmes !


Quand on redémarre l'OrangePi, le DietPi reprend le contrôle du serveur web lighttpd et cela perturbe PirateBox

Workaround:
pkill lighttpd
./stop.sh
./start.sh


Le WIFI ne marche pas bien du tout, on arrive à se connecter mais seulement une fois après c'est le bordel !
De plus quand on est connecté on n'arrive pas à arriver sur la home page de PiratBox.

Workaround:
pas trouvé, c'est le problème majeur de cette installation ;-(


Par contre si l'on ajoute dans son fichier /etc/hosts le nom IP sur l'adresse IP  que l'OrangeBox a via la connexion fixe à son portable, 
par exemple ici pour moi qui utilise net-sharing: 

192.168.2.107 	piratebox.lan

on peut bien se connecter sur la PirateBox (http://piratebox.lan) et afficher la home page sans problème 


Conclusions, en l'état la PirateBox fonctionne mais pas en WIFI !

