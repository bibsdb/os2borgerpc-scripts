---
title: "Udfases - Login - Sæt Borger som standard ved login"
category: "Udfases"
source: os2borgerpc/udfases/set_user_as_default_lightdm_user.sh
---

## Beskrivelse
Dette script er i kategorien "Udfases", da det er indbygget i image 5.0.0 og fremover.

Script der sætter "Borger" som standard ved login.

Inputparametre:
1: Sæt hak for at sætte Borger som standard. Lad stå tom for at  den forvalgte konto altid er den, der senest aktivt har logget ind.

"Aktivt" vil sige, at der er logget ind ved at klikke på brugeren, fremfor alene autologin via timeout. Dvs. hvis der senest er logget ind på superuser, vil superuser stadig være forvalgt, selv efter autologin til Borger.

Dette script er blevet testet og virker på Ubuntu 22.04.