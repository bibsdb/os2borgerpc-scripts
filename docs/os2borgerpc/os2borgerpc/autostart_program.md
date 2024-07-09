---
title: "OS2borgerPC - Autostart program"
category: "OS2BorgerPC"
source: os2borgerpc/os2borgerpc/autostart_program.sh
parameters:
  - name: "Slå 'Tip of the Day' fra"
    type: "checkbox"
    default: null
    mandatory: false
  - name: "Brug Microsofts filformater"
    type: "checkbox"
    default: null
    mandatory: false
---

## Beskrivelse
Starter et givent program hver gang en borger logger på. 
For at få en liste over mulige programmer på en maskine kan man køre scriptet "Desktop - Vis programliste" med parametren sat til "mulige"

Tager imod to parametre:
1. Navnet på det program der skal starte. Navnet ser forskel på store og små bogstaver (da nogle programmer har store bogstaver i deres navn). Kan udfyldes med eller uden filforlængelsen, f. eks. "firefox" eller "firefox.desktop". For at autostarte Chrome skrives "google-chrome".

2. Et afkrydsningsfelt der, hvis der er sat hak i det, tilføjer et program til autostart. Hvis afkrydsningsfeltet er tomt, slettes programmet fra autostart igen.

Dette script er blevet testet og virker på Ubuntu 22.04.