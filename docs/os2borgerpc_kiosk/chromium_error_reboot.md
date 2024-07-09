---
title: "OS2borgerPC Kiosk - Genstart maskinen, hvis Chromium ikke starter korrekt"
category: "OS2BorgerPC Kiosk"
source: os2borgerpc/os2borgerpc_kiosk/chromium_error_reboot.sh
parameters:
  - name: "Aktiver?"
    type: "checkbox"
    default: null
    mandatory: false
---

## Beskrivelse
Dette script ændrer maskinens indstillinger, således at den forsøger at starte Chromium-browseren op til tre gange, hvis browseren ikke starter korrekt i første omgang. Hvis browseren stadig ikke er startet korrekt efter tredje forsøg, genstartes maskinen.

For at undgå at maskinen kommer til at sidde fast i et genstartsloop, vil scriptet maksimalt genstarte maskinen 5 gange i træk.

BEMÆRK: Dette script skal køres efter Chromium - Installér og Chromium - Autostart for at virke.

Scriptet tager 1 parameter:
Aktiver? - Sæt hak i tjekboksen for at aktivere indstillingen. Lad tjekboksen stå tom for at fjerne indstillingen og gå tilbage til det normale enkelte forsøg på at starte Chromium.

Den nye indstilling tager først effekt efter en genstart.