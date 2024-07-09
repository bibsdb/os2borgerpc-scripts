---
title: "OS2borgerPC Kiosk - Chromium med onboard-tastatur"
category: "OS2BorgerPC Kiosk"
source: os2borgerpc/os2borgerpc_kiosk/wm_keyboard_install.sh
parameters:
  - name: "Tilføj skærmtastatur?"
    type: "checkbox"
    default: null
    mandatory: false
---

## Beskrivelse
Sætter billedet op, så det er delt mellem browseren og et virtuelt tastatur.

Dette script forudsætter at følgendes scripts allerede er kørt:
- Chromium Installer
- Chromium Autostart

Inputparametre:
1: Tilføj skærmtastatur?:
   Sæt hak: Installerer og slår skærmtastaturet til
   Lad stå tom: Slår skærmtastatur fra (standard)

Hvis du oplever, det ikke virker, så genkør scriptet "OS2borgerPC Kiosk - Autostart Chromium", efterfulgt af dette.

Dette script tager først effekt efter genstart.

Dette script er blevet testet og virker på Ubuntu 22.04.