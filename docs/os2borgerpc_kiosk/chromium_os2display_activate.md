---
title: "OS2borgerPC Kiosk - Aktiver OS2display-skærm (Chromium)"
category: "OS2BorgerPC Kiosk"
source: os2borgerpc/os2borgerpc_kiosk/chromium_os2display_activate.py
parameters:
  - name: "Screen URL"
    type: "string"
    default: null
    mandatory: true
  - name: "Aktiveringskode"
    type: "string"
    default: null
    mandatory: true
---

## Beskrivelse
Aktiverer en OS2display-skærm i Chromium.
Efter scriptkørsel skal maskinen genstartes.

Scriptet tager to parametre som input:
1. URL til OS2display screen
2. Aktiveringskoden til skærmen (denne kan findes i administrationsmodulet for OS2display).

Udviklet i samarbejde med Københavns Kommune.
Allan Grauenkær - zr09@kk.dk

Dette script er ikke blevet testet på Ubuntu 22.04. Skriv til os, hvis I oplever problemer.