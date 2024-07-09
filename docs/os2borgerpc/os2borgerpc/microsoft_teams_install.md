---
title: "OS2borgerPC - Microsoft Teams: Installer"
category: "OS2BorgerPC"
source: os2borgerpc/os2borgerpc/microsoft_teams_install.sh
parameters:
  - name: "Installér?"
    type: "checkbox"
    default: null
    mandatory: false
  - name: "Fil"
    type: "file"
    default: null
    mandatory: false
---

## Beskrivelse
Udviklet og testet i samarbejde med Vordingborg kommune.

For at installere programmet:

Sæt hak i afkrydsningsfeltet "Installér", for at installere applikation. For at afinstallere applikationen udelades hakket.

Parameteret 'Fil' sættes til nyeste udgave af MS Teams, som kan hentes fra: https://packages.microsoft.com/repos/ms-teams/pool/main/t/teams/

Følgende version blev brugt til test af dette script:
https://packages.microsoft.com/repos/ms-teams/pool/main/t/teams/teams_1.4.00.7556_amd64.deb

Vil du prøve med en anden, eksempelvis nyere, version, kan den findes her:
https://packages.microsoft.com/repos/ms-teams/pool/main/t/teams/

Dette script er blevet testet og virker på Ubuntu 22.04.