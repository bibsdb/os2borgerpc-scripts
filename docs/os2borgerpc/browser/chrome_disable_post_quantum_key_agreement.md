---
title: "Browser - Chrome: Løs problem med TLS 1.3 Hybridized Kyber Support"
category: "Browser"
source: os2borgerpc/browser/chrome_disable_post_quantum_key_agreement.sh
parameters:
  - name: "Aktiver?"
    type: "checkbox"
    default: null
    mandatory: false
---

## Beskrivelse
I nyere versioner af Chrome kan det opleves, at visse hjemmesider ikke fungerer pga. problemer med "TLS 1.3 Hybridized Kyber Support".
Dette script burde løse problemet.

BEMÆRK: Det kan være nødvendigt at genkøre "Browser - Chrome: Installer" for at få den nyeste udgave af Chrome, før at scriptet vil virke.
Det kan også være nødvendigt at logge ud og ind igen, før at scriptet tager effekt.

Scriptet tager en parameter:

Aktiver? - Sæt hak i tjekboksen for at aktivere scriptet.
Lad tjekboksen være tom for at deaktivere scriptet.

Det bør dog bemærkes, at det underliggende problem er firewall-relateret og ideelt set bør løses der.
Se eksempelvis:
https://www.reddit.com/r/sysadmin/comments/1carvpd/chrome_124_breaks_tls_handshake/
https://www.reddit.com/r/sonicwall/comments/1cac4ii/content_filter_blocking_cfs_legitimate_traffic/
