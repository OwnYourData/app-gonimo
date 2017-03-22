# <img src="https://github.com/OwnYourData/app-gonimo/raw/master/www/app_logo.png" width="92"> Gonimo

Gonimo (GOod-NIght-MOnitor - [Link zur Webseite](https://www.gonimo.com)) ist ein Babyphon, für dessen Benutzung du einfach einen Web-Browser benötigst. Zusätzlich hast du die Möglichkeit, die Lautstärke aufzuzeichnen und so zu dokumentieren, wie oft in der Nacht das Baby unruhig war.

Mehr Infos, Screenshots und Demo: https://www.ownyourdata.eu/apps/gonimo/

### Dein Datentresor
Die App Gonimo wird in einem sicheren Datentresor installiert. Üblicherweise musst du deine Daten an die Betreiber von Webservices und Apps weitergeben, um diese nutzen zu können. OwnYourData dreht den Spieß jedoch um: Du behältst all deine Daten und du verwahrst sie in deinem eigenen Datentresor. Apps (Datensammlung, Algorithmen und Visualisierung) holst du zu dir, in den Datentresor hinein.

Mehr Infos und Demo: https://www.ownyourdata.eu  
Hintergrund-Infos für Entwickler: https://www.ownyourdata.eu/developer/

## Installation

Du kannst entscheiden wo du deinen Datentresor einrichten und deine Apps installieren möchtest: auf deinem persönlichen OwnYourData-Server, auf einem anderen Cloud-Dienst deiner Wahl, auf deinem eigenen Computer oder auf einem Raspberry Pi bei Dir daheim.

### Installation am OwnYourData-Server

Diese Installation ist am einfachsten: Fordere deinen Datentresor an: https://www.ownyourdata.eu, öffne den Datentresor und klicke im *OwnYourData App Store* bei Gonimo auf "Install".

### Installation bei Cloud Diensten

Verschiedene Cloud Dienste bieten das Hosting von [Docker](https://www.docker.com) Containern an, z.B. https://sloppy.io oder https://elastx.se. Gonimo steht als Docker-Image unter dem Namen `oydeu/app-gonimo` auf Dockerhub hier zur Verfügung: https://hub.docker.com/r/oydeu/app-gonimo/.   
Starte den Container und verbinde Dich im Konfigurations-Dialog mit deinem Datentresor.

### Installation am eigenen Computer/Laptop

Um Gonimo am eigenen Computer auszuführen, musst du zuerst [eine aktuelle Version von Docker installieren](https://www.docker.com/community-edition#/download). Starte dann Gonimo mit folgendem Befehl:  
`docker run -p 3838:3838 oydeu/app-gonimo`  
Du kannst dann auf Gonimo mit deinem Browser unter folgender Adresse zugreifen:  
`http://192.168.99.100:3838`  
  
*Anmerkungen:*  
* wenn du mehrere Apps verwendest, musst du unterschiedliche Ports verwenden  
  `docker run -p 1234:3838 oydeu/app-gonimo` und `http://192.168.99.100:1234`
* Docker vergibt die IP-Adresse auf deinem Computer unter der du auf die Container zugreifen kannst. Verwende folgenden Befehl, um die tatsächliche IP-Adresse festzustellen: `docker-machine ip`  
* in diesem Blog-Artikel wird ausführlich die Installation einer App am eigenen PC beschrieben: [Ein Container voller Daten](https://www.ownyourdata.eu/2016/09/26/ein-container-voller-daten/)

### Installation am Raspberry Pi

Gonimo steht auch für die Architektur armhf zur Verfügung. Die Installation erfolgt dann wie am Computer/Laptop jedoch unter Verwendung des Docker Image `oydeu/app-gonimo_armhf`.  
  
*Anmerkungen:*  
* Gonimo am Dockerhub: https://hub.docker.com/r/oydeu/app-gonimo_armhf/  
* zur einfachen Installation von Docker am Raspberry empfehlen wir die SD-Card Images von Hypriot: http://blog.hypriot.com/downloads/
* Befehl zum Start des Containers am Raspberry: `docker run -p 3838:3838 oydeu/app-gonimo_armhf`

## Datenstruktur

Die folgenden Listen werden von Gonimo verwendet:

* Gonimo    
    - `time`: Zeistempel in Millisekunden seit 1.1.1970 UTC  
    - `volume`: maximale Amplitued innerhalb des Zeitintervalls (zwischen 0 und 1)  
    - `name`: konfigurierter Babyname  
* Info - Informationen zum Datentresor


## Verbessere Gonimo

Bitte melde Fehler oder Vorschläge für neue Features / UX-Verbesserungen im [GitHub Issue-Tracker](https://github.com/OwnYourData/app-gonimo/issues) und halte dich dabei an die [Contributor Guidelines](https://github.com/twbs/ratchet/blob/master/CONTRIBUTING.md).

Wenn du selbst an der App mitentwickeln möchtest, folge diesen Schritten:

1. Fork it!
2. erstelle einen Feature Branch: `git checkout -b my-new-feature`
3. Commit deine Änderungen: `git commit -am 'Add some feature'`
4. Push in den Branch: `git push origin my-new-feature`
5. Sende einen Pull Request

## Lizenz

[MIT Lizenz 2017 - OwnYourData.eu](https://raw.githubusercontent.com/OwnYourData/app-gonimo/master/LICENSE)
