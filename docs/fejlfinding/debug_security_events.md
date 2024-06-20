---
title: "Fejlfinding - Sikkerhedshændelser"
category: "Fejlfinding"
source: common/fejlfinding/debug_security_events.sh
---

## Beskrivelse
Skriver forskellig information som er relevant ift. at fejlfinde sikkerhedshændelser til Job-loggen. 
Eksempelvis de seneste linier fra de systemlogs, der genereres sikkerhedshændelser pba.

BAGGRUNDSINFORMATION:
Logfilen "authlog" bruges af sikkerhedsscriptene "Sudo" og "Detekter låst Borger"
Logfilen "syslog" bruges ift. "Detekter nytilsluttet keyboard"
USB-scriptet og bloker for login ved hård nedlukning har sine egne services, og ikke pt. logfiler. Men de låser borger-kontoen, som så kan læses fra authlog.

INPUTPARAMETRE:
- Type: Vælg ml. all, authlog, syslog, sudo eller usermod

- Antal linier fra logfil:
Eksempelvis 250