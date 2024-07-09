---
title: "Browser - Chrome: Gemte logins - 1. Slå password manager til/fra"
category: "Browser"
source: os2borgerpc/browser/chrome_password_manager_access_toggle.sh
parameters:
  - name: "Slå password manager TIL, så maskinen husker indtastede logins?"
    type: "checkbox"
    default: null
    mandatory: false
---

## Beskrivelse
Dette script er skrevet til at fungere sammen med to andre scripts, i følgende rækkefølge:
1. Browser - Chrome: Slå password manager til/fra
2. Browser - Chrome: Hent logininformationer fra maskine
3. Browser - Chrome: Tilføj gemte logininformationer

Som udgangspunkt er Password Manageren slået fra.
Dette script kan slå den til, og fra igen. Når den er slået til, vil Chrome efter succesfulde login spørge, om loginnet skal gemmes eller ej.

Dette script er skrevet for at muliggøre at personale kan logge ind på X antal sider på maskinen og få password manageren til at huske det, og dernæst kopiere denne fil over til X antal maskiner.

Dette kan eksempelvis bruges så maskinen husker logins til forskellige tidsskrifter eller andet, der gerne skal være adgang til.

Husk at foretage disse logins fra "Borger"-brugeren fremfor superuser.

Bemærk at alt der gemmes i Password Manager slettes efter logud, så sørg for der ikke logges ud, før du har hentet logininformationerne fra maskinen.

HUSK at slå Password Manageren fra igen bagefter, hvis der er tale om en publikumsmaskine fremfor en intern testmaskine!

Når I har gemt alle de logins I ønsker, kan I gå videre til trin 2, som beskrives på scriptet
"Browser - Chrome: Hent logininformationer fra maskine"
