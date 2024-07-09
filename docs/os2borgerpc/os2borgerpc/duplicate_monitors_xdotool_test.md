---
title: "OS2borgerPC - Dupliker skærm fremfor udvid"
category: "OS2BorgerPC"
source: os2borgerpc/os2borgerpc/duplicate_monitors_xdotool_test.sh
parameters:
  - name: "Skift til duplikeret skærm"
    type: "checkbox"
    default: null
    mandatory: false
---

## Beskrivelse
Dette script gør det muligt at skifte de tilsluttede skærme til at vise samme indhold (duplikeret), fremfor øvrige skærme bliver til separate skrivebord (udvidet). 
Metoden scriptet bruger, er en automatiseret indtasting af genvejstasten Super-p. ("Super" er et andet navn for Windows-tasten.)

Hvis muligt, anbefaler vi i stedet at I bruger scriptet "Genvej til at kopiere skærmindstillinger fra superuser til Borger". Fordelen ved dét er det muliggører mange andre ændringer i skærmindstillinger samt at det ikke er afhængigt af genvejsindtastning som potentielt kan gå galt. Ulempen er at det kræver manuelt arbejde per BorgerPC.

Siden metoden er afhængig af genvejsindtastning, vil skiftet potentielt fejle, hvis Borger samtidig trykker på andre taster på tastaturet.

BEMÆRK:
-Dette script kombineret med "Genvej til at kopiere skærmindstillinger fra superuser" kan give problemer, da skiftet via genvejsindtastningen ændrer opløsningen tilbage til skærmens standardopløsning. Vi foreslår derfor ENTEN at bruge dette script eller det andet, og ikke begge samtidig.

## Kode
#! /usr/bin/env sh

export DEBIAN_FRONTEND=noninteractive

FORCE_DUPLICATE_SCREENS="$1"

PKG_NAME="xdotool"  # Has Wayland and possibly even TTY support, unlike xdotool
SKELETON_USER=".skjult"
AUTOSTART_DESKTOP_FILE="/home/$SKELETON_USER/.config/autostart/set_multiple_monitors_to_duplicate.desktop"
DUPLICATE_MONITORS_SCRIPT="/usr/share/os2borgerpc/bin/autostart_duplicate_monitors.sh"

set -x

mkdir --parents "$(dirname $AUTOSTART_DESKTOP_FILE)"

if [ "$FORCE_DUPLICATE_SCREENS" = "True" ]; then
  apt-get update
  apt-get install --assume-yes $PKG_NAME

  cat << EOF > $AUTOSTART_DESKTOP_FILE
[Desktop Entry]
Type=Application
Exec=$DUPLICATE_MONITORS_SCRIPT
EOF

  cat << EOF > $DUPLICATE_MONITORS_SCRIPT
#! /usr/bin/env sh

# A bit of delay to give the desktop a bit of time to load before trying to do the keybind combination
# Without it seemed to work less consistently
sleep 3
#xdotool keydown super && xdotool key p && sleep 3 && xdotool key --delay 100 p p && xdotool keyup super
# Strangely when you open the menu with the keybind, it starts on duplicate screens, even though "Extend screen" is the default.
xdotool keydown super key p && sleep 1 && xdotool key Left keyup super
EOF

  chmod o+x $DUPLICATE_MONITORS_SCRIPT
else
  rm --force $AUTOSTART_DESKTOP_FILE
  # Leaving xdotool installed
fi