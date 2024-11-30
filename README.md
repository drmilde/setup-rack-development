# Installation der Developmenttools für vcv-Rack

Ein Script zur automatischen Einrichtung der vcv-Rack Umgebung für die Entwicklung von Plugins auf dem Mac. 

## Installation von inkscape

~~~
https://inkscape.org/release/inkscape-1.4/mac-os-x/dmg-arm64/dl/
~~~

## Vorbereitung für die DEV-Tools

- Terminal starten
-  bash aktivieren
-  Arbeitsverzeichnis erstellen und rein-cd-en

~~~
mkdir work
cd work
~~~

0) füge fd1064 zu /private/etc/sudoers hinzu (dann nerve ich nicht mehr)

   - jetzt kann ich den Rest alleine machen

1) git muss aktiviert werden (kann ich dann selbst machen, wenn ich in Sudo-Rechte habe)

2) Installationsskript runterladen,

~~~
wget https://raw.githubusercontent.com/drmilde/setup-rack-development/refs/heads/main/setup_rack_development.sh
~~~

3) und starten mit

~~~
sh setup_rack_development.sh
~~~

Abwarten, und das Beste hoffen

