---
title: "Sikkerhed - Aktiver dvale efter X minutters inaktivitet med besked"
category: "Sikkerhed"
source: os2borgerpc/sikkerhed/inactivity_suspend_after_time.sh
---

## Beskrivelse
Vis en advarsel efter et antal minutters inaktivitet - ved fortsat inaktivitet logges brugeren automatisk ud og maskinen går i dvale.

BEMÆRK: USB-overvågning kan ikke være aktiv, mens en computer er i dvale. Vi anbefaler derfor ikke at anvende scriptet på computere, der står uden opsyn, medmindre man benytter de bure, der forhindrer borgere i at tilgå USB-enhederne.

YDERLIGERE BEMÆRKNING: Computere kan ikke tjekke ind på admin-sitet eller køre scripts, mens de er i dvale, og kan derfor komme til at stå som værende offline.

Scriptet tager 5 inputparametre:
1. Aktiver/deaktiver scriptet. Sæt hak i boksen for at aktivere scriptet og lad den stå tom for at deaktivere det.
2. Antal MINUTTER computeren kan være inaktiv, før en advarsel vises.
3. Antal MINUTTER computeren kan være inaktiv, før den lukkes ned. 
    Det skal være længere tid end det første inputparameter, da advarslen ellers ikke vil blive set. Vi foreslår minimum 3 minutter længere.
4. Teksten der vises i inaktivitetsadvarslen.
    Hvis feltet efterlades tomt bruges standardteksten "Du er inaktiv og logges ud om kort tid.."
5. Teksten der vises på knappen i inaktivitetsadvarslen.
    Hvis feltet efterlades tomt bruges standardteksten "OK".

Eksempel:
Med inputparametrene 5 og 10 vil der vises en advarsel efter 5 minutter, og hvis inaktiviteten så fortsætter 5 minutter derefter, vil brugeren blive logget af, og maskinen vil gå i dvale.

Hvis du ønsker linieskift i teksten, kan det gøres ved at skrive \n således:
Linie1\nLinie2

Vi anbefaler at genstarte efter kørsel, for at være sikker på, det har taget effekt.

Dette script er blevet testet og virker på Ubuntu 22.04.