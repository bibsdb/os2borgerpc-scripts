---
title: "Login - Skjul superuser fra loginskærm og vis eventuelt loginfelt til valgfri bruger"
category: "Login"
source: os2borgerpc/login/lightdm_hide_superuser.sh
---

## Beskrivelse
Dette script gør det muligt at skjule superuser fra loginskærmen.
Man kan i samme forbindelse vælge at slå det til, så man selv kan indtaste et brugernavn på loginskærmen i stedet, som så også kan være superuser.

Det kræver genstart før det tager effekt.

Inputparametre:
1. Skjul superuser-brugeren:
   Sæt hak for at skjule superuser-brugeren.
   Lad stå tom for igen at vise superuser-brugeren (standard)
2. Vis loginfelt til login på valgfri bruger under "Borger":
    Sæt hak for at vise loginfeltet
    Lad stå tom for at skjule loginfeltet

Dette script er blevet testet og virker på Ubuntu 22.04.