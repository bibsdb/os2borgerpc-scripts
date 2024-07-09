---
title: "Udfases - OS2borgerPC - Logud-knap"
category: "Udfases"
source: os2borgerpc/udfases/desktop_logout_button.sh
parameters:
  - name: "Aktiver?"
    type: "checkbox"
    default: null
    mandatory: false
  - name: "Navn på genvej (uden mellemrum)"
    type: "string"
    default: null
    mandatory: true
---

## Beskrivelse
Dette script er i kategorien "Udfases" da det erstattes af scriptet "Desktop - Logud-knap med valgfrit ikon".

Tilføjer et ikon på skrivebordet som logger brugeren ud, uden at blive promptet for det.
Virker efter logud.

Parametre/Indstillinger:
1: En afkrydset tjekboks tilføjer knappen, mens en tom tjekboks fjerner den.
2: Navnet du ønsker, knappen skal have på skrivebordet.

BEMÆRK: Scriptet "Desktop - Aktiver genveje" skal køres før dette virker.

Med tak til og inspiration fra scriptet dertil lavet af Vordingborg Kommune.

Dette script er blevet testet og virker på Ubuntu 22.04.