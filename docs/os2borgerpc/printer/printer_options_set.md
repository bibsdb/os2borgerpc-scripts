---
title: "Printer - Sæt indstillinger"
category: "Printer"
source: os2borgerpc/printer/printer_options_set.sh
---

## Beskrivelse
Script, der sætter de printer-indstillinger (kaldet "Options" i Linux-printersystemet CUPS), der er forespurgt og fundet.

Kør scriptet "Printer - Vis printer-indstillinger" for at se, hvilke indstillingsmuligheder, den givne printer har.

Vil kun virke, hvis der er en PPD-fil eller hvis printeren er sat op med IPP Everywhere.

NB: De konkrete muligheder og værdier kan variere fra printer til printer.

Inputparametre:
  1: Printer-navn
  2: Papirstørrelse
  3: Farve eller sort-hvid
  4: Duplex
  5: Print-orientering

Dette script er blevet testet og virker på Ubuntu 22.04.