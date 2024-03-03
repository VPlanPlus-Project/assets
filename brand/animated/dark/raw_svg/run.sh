#!/bin/bash

# Erstellen des Ausgabeordners, falls er nicht existiert
mkdir -p /out

# Durchlaufen der Zahlen von 00 bis 72
for i in {00..72}; do
    # Überprüfen, ob eine entsprechende SVG-Datei existiert
    if [ -f "frame$i.svg" ]; then
        # Verwenden von Inkscape, um SVG in PNG zu konvertieren
        inkscape "frame$i.svg" -w 2000 -h 2000 --export-background=#000000 --export-background-opacity=0 -o "../raw_png/frame$i.png"
    fi
done
