---
title: "Printer - Tilføj netværksprinter (PPD-fil skal angives)"
category: "Printer"
source: os2borgerpc/printer/network_printer_add_ppd.sh
---

## Beskrivelse
Tilføj ny netværksprinter.

BEMÆRK: Medmindre du har særlige grunde, der kræver en PPD, anbefaler vi i stedet at tilføje printere med scriptet "Tilføj netværksprinter", som ikke kræver en PPD.

INPUTPARAMETRE:

* Printernavn - ingen Æ, Ø og Å og ingen mellemrum
* IP-adresse
* Beskrivelse / placering  - denne kan godt indeholde mellemrum
* Printer-driver (PPD-fil)
* Protokol - protokollen "socket", også kaldet "appsocket" og "jetdirect" er forvalgt, da det er den protokol dette script historisk har brugt. 
  Hvis scriptet "Tilføj netværksprinter", som har IPP-protokollen forvalgt, ikke virker for den pågældende printer, anbefaler vi at afprøve at køre dette script med "socket".
* Sæt som standard? Afgører om printeren også sættes som standard-printer eller ej. Det vil typisk sige, om den er forvalgt i diverse programmer, når der printes.

EFTER kørsel af dette script, kan du evt. ændre indstillinger på printeren med scriptet "Printer - Sæt printer-indstillinger".

NÆRMERE INFO OMKRING PROTOKOLLER:
Scriptet "Vis printer-liste" kan give en idé om hvilke protokoller en printer understøtter, men det er ikke altid, de er til at identificere. Den sikreste metode for at afgøre hvilke protokoller der understøttes, er derfor at kigge i printerens dokumentation.

IPP:
IPP  kører over TCP og bruger normalt port 631.
Nærmere info: https://en.wikipedia.org/wiki/Internet_Printing_Protocol

Socket/Appscoket/Jetdirect
http://www.cups.org/doc/network.html
https://wiki.debian.org/CUPSPrintQueues#appsock


Dette script er blevet testet og virker på Ubuntu 22.04.