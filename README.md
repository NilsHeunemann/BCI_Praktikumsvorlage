# LaTeX Vorlage für BCI-Laborversuche

Diese Vorlage richtet sich nach den Vorgaben für die BCI-Labor Protokolle. 
Es kann vorkommen, dass einzelne Details angepasst werden müssen. 
Feedback und verbesserungen sind gerne gesehen.


## Struktur
Die Dateien die bearbeitet oder verändert werden müssen befinden sich alle in dem Ordner Inhalt. 
In der Datei `0_titlepage.tex` muss der Name, das Datum des Versuch Tags und die Nummer des Versuchs angepasst werden, außerdem müssen Gruppennummer und die Namen der Gruppe ergänzt werden. 
Es können ebenfalls direkt die TU-Mail Adressen eingegeben werden. Alle Zeilen in den etwas geändert werden muss sind außerdem markiert. 

In den anderen Dateien werden dann die entsprechenden Inhalte ergänzt.


### Beispiele
In der Datei Beispiel.tex sind entsprechende Beispiele für die Umsetzung zu finden.
Die aus der Datei entstehende .pdf ist auch unter Releases zu finden.


## Installation

## Overleaf
Um die Vorlage bei Overleaf zu benutzen sind ein paar Schritte nötig
1. .zip Datei bei GitHub herunterladen 
2. Auf der Overleaf Projektseite > New Project > Upload Project .zip Datei hochladen
3. Menü öffnen (oben links)
   - Compiler auf `LuaLaTeX` stellen
   - Main Document auf `main.tex` stellen



**Achtung: Auf der linken Seite darf nicht die Datei header.tex ausgewählt sein, da Overleaf sonst keine .pdf erzeugt.**


BEISPIEL:
Um das Beispiel zu kompilieren das Menü öffnen und als Main Document `Beispiel/Beispiel.tex` auswählen und dann nochmal kompilieren. 

## TeX Live 
Es ist ein Makefile enthalten, der `latexmk` aufruft um die Datei zu Kompilieren. 
Der Output wird dabei in den neu erstellten build Ordner geschrieben. 

Der Makefile hat die drei zusätzlichen Targets:
-   clean: löscht den build Ordner
-   example: Kompiliert das Beispiel
-   preview: nutzt den Kontinuierlichen Modus von latexmk um bei geänderten Dateien neu zu kompilieren


Es kann sein, dass die Schriftart nach installiert werden, das geht z.B. mit: 
```
sudo apt-get install fonts-liberation
```
