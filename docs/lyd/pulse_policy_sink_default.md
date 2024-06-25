---
title: "Lyd - Sæt standard-lydudgang (sink)"
category: "Lyd"
source: common/lyd/pulse_policy_sink_default.sh
---

## Beskrivelse
Scriptet ændrer hvilken lydudgang der benyttes som standard.

Ændringen tager først effekt efter genstart.

Inputparametre:
  Aktivér: Sæt hak hvis du ønsker at sætte standardlydudgang. Udelad hak hvis du ønsker at nulstille til standard.
  Standardlydudgang: Navnet på den lydudgang (i lydsystemet pulseaudio kaldes dette en "sink") der skal sættes som standard.
  Du kan finde navnet på alle lydudgange ved at køre scriptet: "Lyd - Udprint informationer omkring lydenheder"