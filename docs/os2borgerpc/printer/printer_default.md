---
title: "Printer - Sæt standard"
category: "Printer"
source: os2borgerpc/printer/printer_default.sh
parameters:
  - name: "Navn"
    type: "string"
    default: null
    mandatory: true
---

## Beskrivelse
Vælg standard printer. Printer navnet kan findes ved at køre scriptet "Printer - Vis printer liste"

*Note - Scriptet har problemer hvis printer navnet indeholder mellemrum. I så fald anbefales det at ændre printer navnet.

Dette script er blevet testet og virker på Ubuntu 22.04.