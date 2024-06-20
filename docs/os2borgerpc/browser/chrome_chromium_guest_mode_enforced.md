---
title: "Browser - Chrome/Chromium: Gæstetilstand til/fra (guest mode)"
category: "Browser"
source: os2borgerpc/browser/chrome_chromium_guest_mode_enforced.sh
---

## Beskrivelse
Udviklet og testet i samarbejde med Aarhus kommune.

Parameter - Aktivér

For tilføje policy'en sæt hak i afkrydsfeltet.

For at fjerne browserpolitikken, så lad afkrydsningsfeltet stå tomt.

BEMÆRK: 
- Hvis dette script køres vil startsiden ikke længere indlæses, og i stedet vil en infoside omkring gæstetilstand blive vist.
- Bogmærker sat via script vises ikke længere. Dvs. bogmærkescriptet har ikke længere en effekt.
- Browserudvidelser, selv sat via scripts, er ikke længere aktive. Dvs. browserudvidelses-scriptet har ikke længere en effekt.
Ovenstående begrænsninger er ikke aktive valg fra vores side, men sådan Chrome/Chromium-udviklerne har fastlåst, det skal være.

"Google Chrome enforces guest sessions and prevents profile sign-ins. Guest sign-ins are Google Chrome profiles where windows are in Incognito mode."

ref: https://chromeenterprise.google/policies/#BrowserGuestModeEnforced

Dette script er blevet testet og virker på Ubuntu 22.04.
