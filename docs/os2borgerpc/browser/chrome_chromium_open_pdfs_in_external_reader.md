---
title: "Browser - Chrome/Chromium: Åbn PDF i standard PDF-program"
category: "Browser"
source: os2borgerpc/browser/chrome_chromium_open_pdfs_in_external_reader.sh
parameters:
  - name: "Aktiver?"
    type: "checkbox"
    default: null
    mandatory: false
---

## Beskrivelse
Dette script tilføjer en browserpolitik, som får Chrome og Chromium til automatisk at downloade PDF'er og åbne dem i maskinens standard PDF-program frem for at åbne dem i browseren.

På OS2borgerPC installeret ud fra image 5.0.0 eller nyere, vil standard PDF-programmet som udgangspunkt være Okular.
For ældre images er standard PDF-programmet som udgangspunkt Evince (Dokumentfremviser).

Scriptet tager en parameter:

Aktiver? - Sæt hak i tjekboksen for at tilføje den nævnte browserpolitik.
Lad tjekboksen stå tom for at fjerne den nævnte browserpolitik.

Den almindelige oprydning på OS2borgerPC bevirker, at de hentede PDF'er slettes, når borgeren logger ud.
