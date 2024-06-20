---
title: "Fejlfinding - OS2display"
category: "Fejlfinding"
source: common/fejlfinding/debug_os2display.sh
---

## Beskrivelse
Scriptet er skrevet til at fejlfinde ift. hvis maskinen ikke kan vise et OS2display-slideshow.
Specifikt forsøger scriptet at tjekke, om maskinen overhovedet kan skabe en forbindelse til den angivne OS2display-server.

På nuværende tidspunkt gør scriptet følgende: 
1. Udprinter scriptet en liste af processer der kører på Kiosk/BorgerPC-maskinen, og 
2. Forsøger at lave forespørgsler fra Kiosk/BorgerPC-maskinen til OS2display-serveren (angiv Domæne/URL via et parameter) først via ping/ICMP og så via HTTPS.

Hvis du har gode idéer til yderligere fejlfindingstrin dette script kunne udføre, så kontakt os endelig.