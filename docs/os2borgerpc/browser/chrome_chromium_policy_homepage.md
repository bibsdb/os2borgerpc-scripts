---
title: "Browser - Chrome/Chromium: Sæt startside(r)"
category: "Browser"
source: os2borgerpc/browser/chrome_chromium_policy_homepage.sh
parameters:
  - name: "Startside-URL"
    type: "string"
    default: null
    mandatory: true
  - name: "Ekstra faneblade"
    type: "string"
    default: null
    mandatory: false
---

## Beskrivelse
Scriptet skifter startside(r) for Google Chrome og Chromium for brugeren Borger.
Scriptet forventer en hjemmeside-URL som første input parameter.

Derudover kan man også tilføje en liste yderligere ekstra faner man kunne tænke sig. Læs mere forneden.

##### Inputparametre #####

1. Startside-URL : tekststreng
2. Ekstra faneblade : tekststreng

##### Eksempel med startside plus en ekstra fane #####

Startside-URL  : https://borger.dk
Ekstra faneblade : https://info.jobnet.dk/

##### Eksempel med startside plus 3 ekstra faner #####

URL'erne separes med | som forneden.

Ekstra faneblade : https://info.jobnet.dk/|https://skat.dk|https://www.sundhed.dk/

Dette script er blevet testet og virker på Ubuntu 22.04.