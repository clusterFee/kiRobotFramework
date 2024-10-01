# Hier ist eine detaillierte Anleitung, wie du das Robot Framework mit Playwright auf einem Ubuntu-System lokal integrieren kannst.
## Schritt 1: Systemvoraussetzungen

Stelle sicher, dass du die folgenden Komponenten auf deinem Ubuntu-Computer installiert hast:

1. Python (3.6 oder höher)

2. pip (Python Package Installer)
   
## Schritt 2: Python und Pip installieren

1. Python installieren (falls noch nicht installiert):

 ```bash

 sudo apt update

 sudo apt install python3 python3-pip

 ```

2. Überprüfe die Installation:

 ```bash

 python3 --version

 pip3 --version

 ```
##  Schritt 3: Robot Framework und Playwright installieren

1. Robot Framework installieren:

 ```bash

 pip3 install robotframework

 ```

2. Playwright installieren:

 ```bash

 pip3 install playwright

 ```

3. Browser installieren:

 ```bash

 playwright install

 ```

4. Robot Framework Playwright-Bibliothek installieren:

 ```bash

 pip3 install robotframework-playwright

 ```
## Schritt 4: Erstellen eines Testscripts

1. Erstelle ein Verzeichnis für deine Testdateien:

 ```bash

 mkdir -p ~/robot_tests

 cd ~/robot_tests

 ```

2. Erstelle eine neue .robot-Datei, z.B. test.robot:

 ```bash

 touch test.robot

 ```

3. Öffne die Datei in einem Texteditor und füge folgendes Beispiel hinzu:

*** Settings ***

Library Browser

*** Variables ***

${URL} https://google.com

${title} google

*** Test Cases ***

Open Browser And Check Title

 Open Browser ${URL} chromium

 ${title} = Get Title

 Should Be Equal As Strings ${title} Google

 Close Browser


## Schritt 5: Ausführen des Tests

Führe den Test über die Kommandozeile aus:

```bash

robot test.robot

```

Wenn Fehler mit :

robot test.robot

Der Befehl 'robot' wurde nicht gefunden, meinten Sie:

 Befehl 'root' aus dem Snap root-framework (v6-30-08)

 Befehl 'probot' aus dem Snap probot (1.0)

 Befehl 'robots' aus dem deb bsdgames (2.17-30)

Siehe 'snap info <snapname>' für weitere Versionen.

=> python3 -m robot.run test.robot
##  Schritt 6: Ergebnisse überprüfen

Nach der Ausführung findest du einen Bericht im selben Verzeichnis. Die Ergebnissdateien heißen log.html, report.html, und output.xml. Diese Dateien enthalten Informationen über die Testergebnisse und die Ausführung.
## Schritt 7: Erweiterte Funktionen nutzen

- Um mit Elementen zu interagieren, kannst du zusätzliche Keywords wie Click, Fill oder Get Text verwenden.

- Beispiel für erweiterte Interaktionen:

```robot

*** Test Cases ***

Submit Form

 Open Browser ${URL} chromium

 Fill input[name="q"] Robot Framework

 Click input[type="submit"]

 Close Browser

```
 Tipps zur Fehlersuche

- Browser öffnen: Wenn du Probleme mit dem Browser hast, stelle sicher, dass die Playwright-Browser korrekt installiert sind. Überprüfe dies mit:

 ```bash

 playwright show-browser

 ``` 