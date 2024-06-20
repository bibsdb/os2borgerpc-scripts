---
title: "Browser - Chrome: Fjern spørgsmål om søgemaskine"
category: "Browser"
source: ""
---

## Beskrivelse
Nyere udgaver af Chrome vil spørge om valg af søgemaskine, hver gang de startes af Borger.

Dette script fjerner dette spørgsmål ved at sætte standard-søgemaskinen for Chrome til Google (den tidligere standardopførsel for Chrome), hvis Chrome er installeret.

Den ændring, som dette script foretager, er allerede blevet indbygget i "Browser - Chrome: Installer", så dette er udelukkende et midlertidigt script, som anvendes til at tilføje ændringen til eksisterende computere.

Hvis scriptet køres på en OS2borgerPC Kiosk eller en OS2borgerPC, hvor Chrome ikke er installeret, vil scriptet ikke have nogen effekt.

## Kode
#!/usr/bin/env bash

set -x

CHROME_DEFAULTS_POLICY="/etc/opt/chrome/policies/managed/os2borgerpc-defaults.json"
SEARCH_POLICY="/etc/opt/chrome/policies/managed/os2borgerpc-search-provider.json"

if get_os2borgerpc_config os2_product | grep --quiet kiosk; then
  echo "This computer is an OS2borgerPC Kiosk. Exiting without doing anything."
  exit 0
fi

if [ -f "$CHROME_DEFAULTS_POLICY" ]; then
  cat > "$SEARCH_POLICY" <<- END
{
    "DefaultSearchProviderEnabled": true,
    "DefaultSearchProviderSearchURL": ""
}
END
  echo "Set default search provider for Chrome to Google (the previous default for Chrome)."
else
  echo "Chrome is not installed. Exiting without doing anything."
  exit 0
fi