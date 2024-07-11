---
title: "Fejlfinding - Netværk"
category: "Fejlfinding"
source: common/fejlfinding/debug_network.sh
parameters:
  - name: "Host (IP-adresse eller hostnavn)"
    type: "string"
    default: null
    mandatory: true
---

## Beskrivelse
Undersøger om der er adgang til en netværksenhed (baseret på domænenavn eller IP) via ping og traceroute.