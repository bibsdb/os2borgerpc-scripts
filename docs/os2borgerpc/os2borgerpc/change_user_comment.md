---
title: "OS2borgerPC - Skift navn for Borger-brugeren"
category: "OS2BorgerPC"
source: os2borgerpc/os2borgerpc/change_user_comment.sh
parameters:
  - name: "Navn for Borger-brugeren"
    type: "string"
    default: "Borger"
    mandatory: true
---

## Beskrivelse
Dette script kan bruges til at ændre borger-brugerens navn på login-skærmen.

Scriptet tager en parameter, som er det nye navn på Borger-brugeren.

Scriptet tager effekt, så snart det er kørt.