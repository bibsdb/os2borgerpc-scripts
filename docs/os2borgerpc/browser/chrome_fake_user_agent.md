---
title: "Browser - Chrome: Ret problem med MitID"
category: "Browser"
source: os2borgerpc/browser/chrome_fake_user_agent.sh
parameters:
  - name: "Aktiver?"
    type: "checkbox"
    default: null
    mandatory: false
---

## Beskrivelse
Der opleves i øjeblikket et problem med MitID på OS2borgerPC, hvor MitID tror, at det kører på en mobilenhed.
Dette problem skyldes en fejl i MitID, som blev introduceret med en opdatering, der bevirker, at MitID fejlidentificerer alle Linux-maskiner som værende Android. 
Mere præcist fejlfortolker MitID browserens "user-agent", der indeholder information om det system browseren kører på, således at MitID tror, at Linux er Android.

Dette script omgår problemet på Chrome ved at ændre Chromes "user-agent", så den påstår, at browseren kører på en Windows-maskine.

Hvis MitID retter den pågældende fejl, vil dette script ikke længere være nødvendigt.

Scriptet tager en inputparameter:

Aktiver? - Sæt hak i afkrydsningsfeltet for at aktivere scriptet.
Fjern hakket i afkrydsningsfeltet for at deaktivere scriptet.