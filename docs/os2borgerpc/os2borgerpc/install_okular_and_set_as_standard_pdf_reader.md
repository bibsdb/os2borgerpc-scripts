---
title: "OS2borgerPC - Installer Okular som standard PDF-program"
category: "OS2BorgerPC"
source: os2borgerpc/os2borgerpc/install_okular_and_set_as_standard_pdf_reader.sh
---

## Beskrivelse
Okular kan både bruges til at læse og redigere PDF'er.

Ubuntus standard PDF-læser hedder Dokumentfremviser, som også kaldes "Evince". 
Okular har den fordel over Evince, at den kan redigere PDF'er, hvilket vil sige den kan bruges til at udfylde formularer, der ikke har deciderede inputfelter.
Vi har selv oplevet tilfælde af formular-PDF'er, at de ikke havde inputfelter, og derfor blev dette script udviklet. 
Hvis I oplever PDF'er til udfyldning fra det offentlige, som ikke har inputfelter, vil vi også foreslå at indmelde fejlen til den rette instans, så PDF'en kan rettes.

Hvis scriptet køres med udeladt "hak" ved parametret, skiftes der tilbage til Evince.

Dette script er blevet testet og virker på Ubuntu 22.04.