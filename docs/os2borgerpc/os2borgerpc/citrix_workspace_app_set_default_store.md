---
title: "OS2borgerPC - Citrix Workspace App: Set default store"
category: "OS2BorgerPC"
source: os2borgerpc/os2borgerpc/citrix_workspace_app_set_default_store.sh
parameters:
  - name: "STORE_NAME"
    type: "string"
    default: null
    mandatory: true
  - name: "DEFAULT_STORE"
    type: "string"
    default: null
    mandatory: true
---

## Beskrivelse
Udviklet og testet i samarbejde med Vordingborg kommune.

Sætter citrix "default store" på en given PC.

Inputparametre:

1) store name
2) default store

Dette script er ikke blevet testet på Ubuntu 22.04. Skriv til os, hvis I oplever problemer.