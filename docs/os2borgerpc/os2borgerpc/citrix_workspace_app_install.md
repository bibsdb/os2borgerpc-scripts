---
title: "OS2borgerPC - Citrix Workspace App: Installer"
category: "OS2BorgerPC"
source: os2borgerpc/os2borgerpc/citrix_workspace_app_install.sh
---

## Beskrivelse
Udviklet og testet i samarbejde med Vordingborg kommune.

BEMÆRK venligst at:
1) Scriptet er beregnet til OS2borgerPC .
2) Hvis brugere has sessions, mens installation foregår, så skal disse logge af og på igen, før konfiguration af Citrix tager effekt.

Inputparamatrene DEB og CRT er et file-uploads.

CRT:
Root CA for den citrix-server man forbinder til. Formatet skal være Base 64 DER X.509 Certificate med endelsen .crt (Windwos cert store eksporterer typisk til .cer - det er bare at ændre det manuelt)

DEB:
Det er VIGTIGT at .deb-filen hentes herfra: 
https://www.citrix.com/downloads/workspace-app/linux/workspace-app-for-linux-latest.html