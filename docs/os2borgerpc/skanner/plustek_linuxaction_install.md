---
title: "Skanner - Installer Plustek LinuxAction"
category: "Skanner"
source: os2borgerpc/skanner/plustek_linuxaction_install.sh
parameters:
  - name: "Fil"
    type: "file"
    default: null
    mandatory: true
---

## Beskrivelse
Dette script installerer Plustek LinuxAction, som er et scanner-program udviklet af Plustek, der bl.a. understøtter A3 scanneren Plustek Opticslim 1180 på Linux Ubuntu.

Scriptet tager et inputparameter, som er .deb-filen for Plustek LinuxAction.
Når der klikkes kør/gem efter filen er valgt, vil der være en kortvarig forsinkelse, mens filen uploades til serveren.

Efter installationen kan der oprettes genveje til programmet via scriptet "Desktop - Genvej til program fra skrivebordet" eller scriptet "Desktop - Genvej til program fra menu".
I begge tilfælde er programnavn-inputparameteren "linuxaction.plustek" (uden citationstegn).