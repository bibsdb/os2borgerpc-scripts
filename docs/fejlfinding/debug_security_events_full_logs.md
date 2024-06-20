---
title: "Fejlfinding: Sikkerhedshændelser - Send logfiler"
category: "Fejlfinding"
source: common/fejlfinding/debug_security_events_full_logs.sh
---

## Beskrivelse
Sender en eller flere logs til jobloggen (kern.log, syslog, auth.log - eller alle tre), som er de logfiler sikkerhedsscripts læser, når de giver sikkerhedshændelser.

Procedure:
1. Kør scriptet
2. Kopier de relevante linier ud af logoutputtet og ind i en fil, kaldet eks. outputfil.gz.base64
3. Dernæst kan logfilen læses således fra terminalen på en Linux-computer:
   base64 --decode outputfil.gz.base64 | gunzip > log.txt