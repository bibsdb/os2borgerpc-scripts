---
title: "Printer - Konica Minolta-printer: Tilføj netværksprinter"
category: "Printer"
source: ""
parameters:
  - name: "Navn (OBS: INGEN ÆØÅ, mellemrum eller apostrofer)"
    type: "string"
    default: null
    mandatory: true
  - name: "IP-adresse"
    type: "string"
    default: null
    mandatory: true
  - name: "Beskrivelse / Placering (INGEN ÆØÅ)"
    type: "string"
    default: null
    mandatory: true
  - name: "Driver-pakke-fil (hentes hos Konica Minolta)"
    type: "file"
    default: null
    mandatory: true
  - name: "Navn på driver-fil (PPD), der matcher printer-modellen"
    type: "string"
    default: null
    mandatory: true
  - name: "Protokol"
    type: "string"
    default: "socket"
    mandatory: true
  - name: "Sæt som standard?"
    type: "checkbox"
    default: null
    mandatory: false
---

## Beskrivelse
Dette script er designet til at skulle kunne installere en PPD og filter-filer for vilkårlige Konica Minolta-printere.

Første trin er at finde printeren på Konica Minoltas hjemmeside, og downloade den driver-pakke, der hedder noget alá følgende (versionsnummeret kan variere): "KMbeuUXv1_26_multi_language.tar.gz"

Denne driver-pakke-fil vedhæftes som dette scripts fjerde parameter.

Det femte parameter er navnet på den specifikke driver, der matcher den Konica Minolta-printer, du ønsker at tilføje. Du finder filnavnet på den matchende driver ved at kigge i filen:
"BEU Linux CUPS Driver Guide.pdf"
...som kan downloades på samme side som driveren.

Eksempel - Bizhub C258:
Driver og guide kan findes her:
https://www.konicaminolta.dk/da-dk/hardware/udgaede-maskiner/bizhub-c258
Inde på siden går du ned under "Downloads" og trykker på pilen under "Download"-kolonnen. Herefter henter du "KMbeuUXv1_26_multi_language.tar.gz" og "BEU Linux CUPS Driver Guide.pdf". 
Åbn PDF'en og kig nær bunden af dokumentet i sektionen "Supported products" for at finde hvilken driver (filnavn) der matcher din printer-model.

Hvis du alligevel bliver i tvivl om hvordan dette script anvendes, så skriv til os, og så kan vi hjælpe.

## Kode

#!/usr/bin/env sh

# A script intended to be able to install arbitrary Konica Minolta printers from the KMbeuUX files that can be downloaded from their website, under a given printer model

# lpadmin doesn't like spaces
NAME="$(echo "$1" | tr ' ' '_')"
HOST="$2"
DESCRIPTION="$3"
# A .tar.gz driver file as downloaded from Konica Minolta themselves. It should have a name like: KMbeuUXv1_26_multi_language.tar.gz (4276KB)
DRIVER_PACKAGE_PATH="$4"
# A PPD driver/file contained within the driver package
SELECTED_DRIVER="$5"
PROTOCOL="${6:-socket}"
SET_STANDARD="$7"

set -ex

restore_original_filename() {
  basename "$1" | sed "s/[^_]*_//"
}

# "The default folder on most Linux distributions is /usr/lib/cups/filter"
# "Otherwise the path can be found in CUPS configuration file /etc/cups/cups-files.conf or /etc/cups/cupsd.co"
CUPS_FILTER_DIR="/usr/lib/cups/filter"
# There are multiple places where CUPS reads PPD files
CUPS_DRIVER_DIR="/etc/cups/ppd"
# Filter file names as taken from Konica Minolta's BEU Linux CUPS Driver Guide
FILTER_FILE_1="KMbeuEmpPS.pl"
FILTER_FILE_2="KMbeuEnc.pm"

DRIVER_DESTINATION_PATH="$CUPS_DRIVER_DIR/$SELECTED_DRIVER"

cd "$(dirname "$DRIVER_PACKAGE_PATH")"
DRIVER_PACKAGE_FILE=$(basename "$DRIVER_PACKAGE_PATH")
tar xzvf "$DRIVER_PACKAGE_FILE"
DRIVER_SOURCE_DIR="$(find . -mindepth 1 -type d)"

# Copy the the driver/PPD to a dir that CUPS reads
# NOTE: An alternate approach, perhaps worth considering to simplify arguments, would be to simply copy all drivers in there.
# On the other hand we need to know the driver when specifying the PPD for lpadmin anyway.
cp "$DRIVER_SOURCE_DIR/$SELECTED_DRIVER" $CUPS_DRIVER_DIR/

# Set the correct permissions on the PPD
chmod 644 "$DRIVER_DESTINATION_PATH"

# Copy the filter files to a dir that CUPS reads
cp "$DRIVER_SOURCE_DIR/$FILTER_FILE_1" "$DRIVER_SOURCE_DIR/$FILTER_FILE_2" $CUPS_FILTER_DIR/

# Set the correct permissions on the filter files
chmod 755 $CUPS_FILTER_DIR/$FILTER_FILE_1 $CUPS_FILTER_DIR/$FILTER_FILE_2

# Cleanup and remove the driver package
rm --recursive "$DRIVER_PACKAGE_PATH" "$DRIVER_SOURCE_DIR"

# Restart CUPS afterwards so it should pickup the new PPDs and filters
systemctl restart cups

# As copied from network_printer_add_ppd.sh
lpadmin -p "$NAME" -v "$PROTOCOL://$HOST" -D "$DESCRIPTION" -E -P "$DRIVER_DESTINATION_PATH" -L "$DESCRIPTION"

if [ "$SET_STANDARD" = "True" ]; then
  # Set the printer as standard printer
  lpadmin -d "$NAME" && lpstat -d
fi