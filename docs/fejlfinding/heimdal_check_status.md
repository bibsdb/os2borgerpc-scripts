---
title: "Fejlfinding - Heimdal tjek status"
category: "Fejlfinding"
source: common/fejlfinding/heimdal_check_status.sh
---

## Beskrivelse
Scriptet gør tre ting: 
1. Tjekker om heimdal-clienthost-servicen kører
2. Skriver de loglinier fra servicen i dag, som indeholdet ordet "licens" (dette kan bruges til at verificere, om servicen kan se licensnøglen)
3. Skriver de seneste loglinier fra servicen fra i dag (ufiltreret)

Informationen findes, efter kørsel, i jobloggen.