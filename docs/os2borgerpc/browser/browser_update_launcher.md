---
title: "Browser - Udskift browser-genvejen i venstremenuen med en valgfri browser"
category: "Browser"
source: os2borgerpc/browser/browser_update_launcher.sh
parameters:
  - name: "Udskift browseren i venstremenuen med følgende browser (se muligheder i beskrivelse)"
    type: "options"
    default: "firefox,google-chrome,microsoft-edge"
    mandatory: false
---

## Beskrivelse
Dette script udskifter browseren (der som standard er Firefox) i venstremenuen med en valgfri browser, angivet som første parameter.

Valgmulighederne er:
- firefox
- google-chrome
- microsoft-edge

Dette script er blevet testet og virker på Ubuntu 22.04.