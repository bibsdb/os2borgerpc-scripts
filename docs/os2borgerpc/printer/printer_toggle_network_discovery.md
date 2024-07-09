---
title: "Printer - Slå automatisk netværksprinter-finding fra/til"
category: "Printer"
source: os2borgerpc/printer/printer_toggle_network_discovery.sh
parameters:
  - name: "Slå automatisk netværksprinter-finding FRA?"
    type: "checkbox"
    default: null
    mandatory: false
---

## Beskrivelse
Inputparametre:
  Slå automatisk netværksprinter-finding fra?:
    Sæt hak: Slår netværksprinter-finding fra
    Lad stå tom: Slår netværksprinter-finding til (standard)

Som resultat fjernes alle printere, der automatisk er fundet via netværket!
Derefter kan en printer så eventuelt tilføjes manuelt via enten scriptet "Printer - Tilføj netværksprinter" eller "Printer - Tilføj netværksprinter (PPD-fil skal angives)".
Hvis I udelukkende bruger Princh kan i nøjes med de installationsscripts dertil.

Hvis det ikke tager effekt med det samme, foreslås det at genstarte maskinen, efter scriptet er kørt.

Dette script er blevet testet og virker på Ubuntu 22.04.