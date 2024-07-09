---
title: "Udfases - Login - Slå scriptkørsel ved login til"
category: "Udfases"
source: os2borgerpc/udfases/lightdm_greeter_setup_scripts.sh
parameters:
  - name: "Slet alle tidligere gemte login scripts fra computeren"
    type: "checkbox"
    default: null
    mandatory: false
---

## Beskrivelse
Dette script er i kategorien "Udfases" da det er indbygget i image 5.0.0 og senere.

Slår kørslen af scripts ved loginskærmen til 

Dette script er en forudsætning for at NumLock aktiveres allerede fra loginskærmen med scriptet:
Desktop - Sæt NumLock-tilstand

OBS: Kræver genstart før de nye indstillinger træder i kraft.

Inputparametre: 
1. Sæt hak for at fjerne alle tidligere gemte login scripts fra computeren, eller lad stå tomt for at lade dem være.

Dette script er blevet testet og virker på Ubuntu 22.04.