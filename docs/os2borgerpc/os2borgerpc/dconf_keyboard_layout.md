---
title: "OS2borgerPC - Tilføj keyboardlayout (sprog)"
category: "OS2BorgerPC"
source: os2borgerpc/os2borgerpc/dconf_keyboard_layout.sh
---

## Beskrivelse
Scriptet tilføjer et valgfrit sprog som alternativt keyboardlayout,
og det vil i topmenuen til højre blive synligt, hvilket layout der pt. er valgt, og derfra kan det også skiftes.

Ønsker du at tilføje Ukrainsk tastaturlayout, skal du indtaste: "ua" (uden citationstegnene) som det andet parameter.

Første parameter afkrydses hvis du vil tilføje layoutet. Lad det stå tomt, hvis du ønsker at slette det. (Dvs. nulstille til standard).

Det valgte layout nulstilles til dansk efter logud, men med mulighed for at skifte.

Det navn du skal bruge for at få et givent keyboardlayout  skulle stemme overens med navnene på denne liste, i første kolonne i tabellen:
https://gist.github.com/jatcwang/ae3b7019f219b8cdc6798329108c9aee#file-gistfile1-txt-L190

Scriptet understøtter pt. kun et enkelt ekstra sprog ud over dansk ad gangen.

Dette script er blevet testet og virker på Ubuntu 22.04.