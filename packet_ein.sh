#!/bin/bash

#bitte pruefen cd /dev/pts nur Geraete 0 belegt!
#sudo systemctl stop avahi-daemon!!!!pruefen
#sudo systemctl stop svxlink.service
#sudo systemctl stop remotetrx.service!!!!
#sudo systenctl stop aprx.service
#evtl.disable alle dienste!!!!! sonst Soundcard belegung falsch!!!!
#evtl.sudo service rsyslog stop weil BPQ viele Nodeeitraege in /var/log...
#auch direwolf viele Fehlermeldung in /var/log...
#
kissnetd -p 2 & 				#/dev/pts/1 und /dev/pts/2 erzeugen
sleep 2
#sudo chmod a+rw /dev/pts/1			#fuer alle lesbar und schreibar
#sudo chmod a+rw /dev/pts/2
#sudo kissattach /dev/pts/1 ip 10.0.0.2          #/dev/pts/1 als ax0(axports2)binden cb7alm-4 /dev/pts/2 in ax25ipd.conf gebunden
#sleep 2
sudo ax25ipd					#ax25ipd starten
sleep 2
#kissnetd -p 2 &				#/dev/pts/3 und /dev/pts/4 erzeugen
#sleep 3
#sudo chmod a+rw /dev/pts/3
#sudo chmod a+rw /dev/pts/4
#sudo kissattach /dev/pts/4 lo1 10.0.0.3		#/dev/pts/3 als ax1(axports3)cb7alm-5 fuer local binden
#sleep 1
#sudo kissattach /dev/pts/5 lo2 10.0.0.4		#/dev/pts/4 als ax2(axports4)cb7alm-6 fuer local binden
#sleep 1
direwolf -p > /dev/null &			#direwolf als kiss /dev/pts/3 starten Ausgabeumleitung
sleep 2
#sudo chmod a+rw /dev/pts/5			#kissgraet fuer alle lese schreibbar
#sleep 1
#sudo kissattach /dev/pts/5 1 10.0.0.1		#als ax3(axports1)cb7alm-3 binden fuer Hf Funk
#sleep 2
#sudo soundmodem &				#soundmodem im MKISS Mode sm0 
#sleep 5
#sudo chmod a+rw /dev/pts/3			#rechte setzen fuer bpq
#sudo modprobe netrom				#kernel modul netrom fuer ax25 netzwerkgereate laden
#sleep 3
#sudo kissnetd -p 2 &				#2 kissports erzeugen
#sleep 3
#sudo chmod a+rw /dev/pts/5			#rechte fuer alle les schreibbar
#sudo chmod a+rw /dev/pts/6			#verbindung bpq nach aprx
#sleep 1
#sudo nrattach -i 10.0.0.10 netrom		#netrom netzwerkgereat erzeugen als nr0 binden
#sleep 5
#sudo netromd					#mit nrparms bitte konfigurieren
#sleep 1
#sudo ax25d					#zum starten der Programme bei connect
#sleep 2
#sudo mheardd -n20 -p ax0,ax1,ax2,sm0                    # -p (sm0),ax0,ax1,ax2(ax3) bestimmte Ports
#sleep 2
#beacon -c cb7nod -d "cq" -t 30 hf "Testatation Gera "
#sleep 1
#beacon -c cb7nod -d "cq fi0gat" -t 15 ip "Teststation Gera"	#test um in mh liste landen fuer autoroute
#sleep 1 
#sudo flexd					#flexdaemon start um flexnachbar zu pollen nur Uronode!
#sleep 2
#sudo ax25rtd					#mit crontab und sudo ax25rtctl -s die gelernten routen speichern
#sleep 1
#sudo aprx					#mit ax interface starten
#rm /home/pi/axlisten.txt
#sudo axlisten -p 1 -a -t > /home/pi/axlisten &	#zur aufzeichnung der Packetet in Datei
#aprx bitte mit systemctl starten ab2.9
#
