---
title: "Sikkerhed - Tillad Borgere at redigere netværksindstillinger"
category: "Sikkerhed"
source: os2borgerpc/sikkerhed/network_manager_allow_user_changes.sh
parameters:
  - name: "Giv adgang?"
    type: "checkbox"
    default: null
    mandatory: false
---

## Beskrivelse
Bemærk: Dette script SVÆKKER sikkerheden på en OS2borgerPC!  

Standardindstillingen er at kun superuser har adgang til at redigere netværksindstillinger, såsom Wi-Fi - men dette script tillader så Borgere at redigere dem.
Det kan være relevant hvis man ønsker at anvende en BorgerPC som en privat computer, der eksempelvis tages med hjem ifm. kursus eller arbejde.

Det vil virke uanset om Borgeren generelt har adgang til Indstillinger eller ej, og vil eks. give adgang til at slukke og tænde for Wi-Fi eller skifte Wi-Fi. Yderligere indstillinger for Wi-Fi vil dog ikke være tilgængelige uden OGSÅ at køre "OS2borgerPC - Juster adgang til Indstillinger for publikum".

Scriptet "Juster adgant til Indstillinger for publikum" er omvendt heller ikke nok alene, for at give adgang til at redigere ALLE netværksindstillinger. Derfor kan du få brug for at køre begge.

Inputparametre:
1: Aktivér adgang?: 
  Sæt hak for at give adgang
  Lad feltet stå tomt for at fjerne adgang.

Dette script er blevet testet og virker på Ubuntu 22.04.