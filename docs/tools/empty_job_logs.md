---
title: "Fejlfinding - Ryd joblogs"
category: "Fejlfinding"
source: tools/empty_job_logs.sh
---

## Beskrivelse
Nogle logs fra script-kørsler kan indeholde nogle tegn, der er ugyldige i XML, som gør adminsitet fejler i modtagelsen af dem, og som derfor forhindrer klienten i at give korrekt status tilbage på jobs, og jobs ender derfor i "Afsendt".

Dette script erstatter jobslogs på maskinen med teksten "Emptied log", så jobmanager igen kan rapportere korrekt ind.

Årsagen til problemet bliver løst i en fremtidig klient, men dette er en midlertidig løsning.