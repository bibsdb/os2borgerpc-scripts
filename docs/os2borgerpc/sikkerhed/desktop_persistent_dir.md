---
title: "Sikkerhed - Vedvarende mappe på skrivebordet"
category: "Sikkerhed"
source: os2borgerpc/sikkerhed/desktop_persistent_dir.sh
---

## Beskrivelse
Bemærk: Dette script SVÆKKER sikkerheden på en OS2borgerPC!  

Standardindstillingen er at alt slettes, og dette script laver så en mappe der er undtaget herfra. Men hvis man vil anvende en BorgerPC som en privat computer, eksempelvis ifm. kurser, arbejde eller deslige, kan det være brugbart.

Opretter en mappe på skrivebordet, med valgfrit navn, som forbliver efter logud/genstart/nedlukning, hvor brugerne kan gemme filer.

Inputparametre:
1: Tilføj genvej?: Sæt hak for at tilføje mappen med det givne NAVN. Udelad hak for at fjerne mappen med det givne NAVN.
2: NAVNET på mappen som skal tilføjes eller fjernes.

Dette script er blevet testet og virker på Ubuntu 22.04.