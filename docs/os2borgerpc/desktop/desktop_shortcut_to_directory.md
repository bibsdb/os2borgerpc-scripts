---
title: "Desktop - Genvej til valgfri mappe fra skrivebordet"
category: "Desktop"
source: os2borgerpc/desktop/desktop_shortcut_to_directory.sh
parameters:
  - name: "Tilføj?"
    type: "checkbox"
    default: null
    mandatory: false
  - name: "Sti til mappe"
    type: "string"
    default: null
    mandatory: true
  - name: "Navn på genvej"
    type: "string"
    default: null
    mandatory: true
---

## Beskrivelse
Opretter en genvej til en valgfri mappe på Skrivebordet.

Scriptet tager to inputparametre:
1. Stien til mappen (eksempelvis: "/home/user/Dokumenter" )
2. Navnet på genvejen (eksempelvis: "Skannede filer" )
...begge uden citationstegnene rundt om.

Bemærk at ift. stien, så har store og små bogstaver en betydning!

Dette script er blevet testet og virker på Ubuntu 22.04.