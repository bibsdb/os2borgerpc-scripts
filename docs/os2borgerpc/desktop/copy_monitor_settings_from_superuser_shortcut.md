---
title: "Desktop - Genvej til at kopiere skærmindstillinger fra superuser til Borger"
category: "Desktop"
source: ""
parameters:
  - name: "Opret genvej"
    type: "checkbox"
    default: null
    mandatory: false
---

## Beskrivelse
Anvendelse:
1. Kør dette script på computeren
2. Login som superuser
3. Åbn programmet "Indstillinger" fra programlisten
4. Gå ind under menupunktet "Skærme"
5. Sæt de ønskede skærmindstillinger 
6. Tryk på den nyoprettede genvej på skrivebordet, til at kopiere de ændrede skærmindstillinger over til Borger

Dette kan eksempelvis bruges til at skifte flere skærme over fra "udvidet skærm" til "duplikeret", til at skifte opløsninger eller opdateringsfrekvenser.

Hvis scriptet køres uden "hak" i parametret vil genvejen fjernes, og skærmindstillingerne for Borger vil blive nulstillet til standard.

BEMÆRK:
- Dette script kombineret med "Dupliker skærm fremfor udvid" kan give problemer, da skiftet via genvejsindtastningen ændrer opløsningen tilbage til skærmens standardopløsning. Vi foreslår derfor enten at bruge dette script eller det andet, og ikke begge samtidig.
- Skærmindstillingerne påvirker IKKE loginskærmen.
- Scriptet tager først effekt efter logud.

## Kode
#! /usr/bin/env sh

# Author: Marcus Funch (mfm@magenta.dk)
# License: GPL

ACTIVATE="$1"

SKELETON_USER=".skjult"
SUPERUSER="superuser"
MONITOR_SETTINGS_FILE_SUPERUSER="/home/$SUPERUSER/.config/monitors.xml"
MONITOR_SETTINGS_FILE_SKELETON="/home/$SKELETON_USER/.config/monitors.xml"
MONITOR_SCRIPT="/usr/share/os2borgerpc/bin/monitor-settings-superuser-copy.sh"
MONITOR_SUDOERS_SCRIPT="/etc/sudoers.d/monitor-script-nopasswd"

DESKTOP=$(basename "$(runuser -u $SUPERUSER xdg-user-dir DESKTOP)")

MONITOR_SCRIPT_DESKTOP_FILE="/home/superuser/$DESKTOP/os2borgerpc-monitor-settings-superuser-copy.desktop"

set -x

mkdir --parents "$(dirname $MONITOR_SETTINGS_FILE_SKELETON)"

if [ "$ACTIVATE" = "True" ]; then
cat << EOF > $MONITOR_SCRIPT
#! /usr/bin/env sh

# Support three different languages
MSG_SUCCESS_EN="Monitor settings updated to reflect superuser's. Logout and in again, and the changes should take effect."
MSG_SUCCESS_DA="SkÃ¦rmindstillingerne er opdateret til at matche superusers. Logud og ind igen, og derefter burde Ã¦ndringerne tage effekt."
MSG_SUCCESS_SV="SkÃ¤rminstÃ¤llningarna har uppdaterats fÃ¶r att matcha superuser. Logga ut och in igen, och sedan bÃ¶r Ã¤ndringarna trÃ¤da i kraft."
MSG_ERROR_EN="Couldn't find the monitor settings file for superuser. You must first make changes to the monitor settings for superuser before running this script."
MSG_ERROR_DA="Kunne ikke finde skÃ¦rmindstillingsfilen for superuser. Inden kÃ¸rsel af dette script skal du fÃ¸rst lave Ã¦ndringer i skÃ¦rmindstillingerne for superuser."
MSG_ERROR_SV="Kunde inte hitta skÃ¤rminstÃ¤llningsfil fÃ¶r superuser. Innan du kÃ¶r det hÃ¤r skriptet mÃ¥ste du fÃ¶rst gÃ¶ra Ã¤ndringar i skÃ¤rminstÃ¤llningarna fÃ¶r superuser."

if echo \$LANG | grep --quiet sv; then
    MSG_SUCCESS=\$MSG_SUCCESS_SV
    MSG_ERROR=\$MSG_ERROR_SV
elif echo \$LANG | grep --quiet da; then
    MSG_SUCCESS=\$MSG_SUCCESS_DA
    MSG_ERROR=\$MSG_ERROR_DA
else
    MSG_SUCCESS=\$MSG_SUCCESS_EN
    MSG_ERROR=\$MSG_ERROR_EN
fi

if [ -f $MONITOR_SETTINGS_FILE_SUPERUSER ]; then
    # Really the only command needing root access
    cp $MONITOR_SETTINGS_FILE_SUPERUSER $MONITOR_SETTINGS_FILE_SKELETON
    # Since this is now run as root we can't successfully call zenity directly...
    runuser -u $SUPERUSER -- zenity --info --text "\$MSG_SUCCESS"
else
    runuser -u $SUPERUSER -- zenity --info --text "\$MSG_ERROR"
fi
EOF

cat << EOF > "$MONITOR_SCRIPT_DESKTOP_FILE"
[Desktop Entry]
Name=Copy monitor settings to user
Name[da]=Kopier skÃ¦rmindstillinger til Borger
Name[sv]=Kopiera skÃ¤rminstÃ¤llningar till Medborgar
Type=Application
Icon=preferences-desktop-display
Exec=sudo $MONITOR_SCRIPT
EOF

# Make the desktop shortcut launchable
runuser -u $SUPERUSER dbus-launch gio set "$MONITOR_SCRIPT_DESKTOP_FILE" metadata::trusted true

cat << EOF > $MONITOR_SUDOERS_SCRIPT
$SUPERUSER ALL = (root) NOPASSWD: $MONITOR_SCRIPT
EOF

chown superuser:superuser "$MONITOR_SCRIPT" "$MONITOR_SCRIPT_DESKTOP_FILE"
# Regarding the desktop file:
# This is partially done to update the timestamp of the desktop file file so gio realizes its changed. We've tried touch for this, but sometimes, strangely,
# that hasn't been enough
chmod 500 $MONITOR_SCRIPT "$MONITOR_SCRIPT_DESKTOP_FILE"
chmod 440 $MONITOR_SUDOERS_SCRIPT
else
    rm --force "$MONITOR_SETTINGS_FILE_SKELETON" "$MONITOR_SCRIPT" "$MONITOR_SCRIPT_DESKTOP_FILE" "$MONITOR_SUDOERS_SCRIPT"
fi