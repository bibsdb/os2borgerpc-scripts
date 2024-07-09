---
title: "Sikkerhed - Log altid ud efter X minutter uden besked"
category: "Sikkerhed"
source: os2borgerpc/sikkerhed/always_logout_after_time.sh
parameters:
  - name: "Minutter (parametret)"
    type: "integer"
    default: null
    mandatory: true
---

## Beskrivelse
Log altid brugeren ud efter et antal minutter.
Hvis du ønsker at slå effekten af scriptet fra, kan det køres med parametret "0".

Dette script er blevet testet og virker på Ubuntu 22.04.