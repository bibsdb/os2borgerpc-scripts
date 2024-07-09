---
title: "Browser - Chrome/Chromium: Sæt Inkognito-indstillinger"
category: "Browser"
source: os2borgerpc/browser/chrome_chromium_incognito_enforce.sh
parameters:
  - name: "AKTIVER"
    type: "checkbox"
    default: null
    mandatory: false
  - name: "INCOGNITO_MODE"
    type: "integer"
    default: null
    mandatory: true
---

## Beskrivelse
Scriptet benytter Chrome Policy'en "Incognito mode availability".

BEMÆRK: 
- Hvis dette script køres vil startsiden ikke længere indlæses, og i stedet vil en infoside omkring gæstetilstand blive vist.
- Browserudvidelser, selv sat via scripts, vil ikke længere være aktive. Dvs. udvidelses-scriptet har ikke længere en effekt.

Ovenstående begrænsninger er ikke aktive valg fra vores side, men det er sådan de har valgt, det skal være, fra Chrome-udviklernes side.

*** INPUTPARAMETRE***

AKTIVER (Afkrydsningsfelt)

INCOGNITO_MODE (Heltal / Integer)

0 = Incognito mode available (Standardindstillingen: Browseren er ikke i inkognito som standard, men det er muligt at åbne et vindue i tilstanden) 
1 = Incognito mode disabled (Det er ikke muligt at åbne browseren i inkognito-tilstand)
2 = Incognito mode forced (Bowseren er altid i inkognito-tilstand)

(Dette parameter sættes også til henholdsvis 0, 1, eller 2, når flueben fjernes fra AKTIVER - dvs. når script skal deaktiveres)

Dette script er blevet testet og virker på Ubuntu 22.04.