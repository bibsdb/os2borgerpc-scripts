---
title: "Browser - Chrome/Chromium: Start i maksimeret, fuld skærm eller kiosk tilstand"
category: "Browser"
source: os2borgerpc/browser/chrome_chromium_start_maximized_fullscreen_kiosk.sh
---

## Beskrivelse
Indstil Chrome til at åbne eller ikke at åbne i maksimeret tilstand, fuld skærm eller kiosk tilstand som standard.
Der skal logges ud eller genstartes før det tager effekt.

Forudsætter at "Chrome - Installer" tidligere er blevet kørt.

Inputparametre:
Scriptet tager kun ét parameter, som er et tal. Følgende tal svarer til følgende indstilling:
-  0: Slå både maksimeret, fuld skærm og kiosk fra 
-  1: Slå maksimeret til
-  2: Slå fuld skærm til
-  3: Slå kiosk til

Teknisk note: Disse sættes pt. i .desktop-filerne fremfor via Chrome politikker, da det desværre ikke pt. er muligt at styre disse via sidstnævnte fra Googles side.

Dette script er blevet testet og virker på Ubuntu 22.04.