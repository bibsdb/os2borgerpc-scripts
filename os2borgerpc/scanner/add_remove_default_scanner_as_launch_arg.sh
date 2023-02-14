#!/bin/bash

# Adds/Removes a default device as launch argument to simple-scan's [Desktop Entry] in /usr/share/applications/simple-scan.desktop.
# Author: heini@magenta.dk
#
# Arguments:
# 1: Use a boolean to decide whether to add or remove the program shortcut
# 2: This (string) argument is the source

ADD="$1"
DEFAULT_SCANNER="$2"

DESKTOP_FILE="/usr/share/applications/simple-scan.desktop"

if [ "$ADD" = "True" ]; then
  sed -i "s@Exec=simple-scan@Exec=simple-scan $DEFAULT_SCANNER@" "$DESKTOP_FILE"
else
  sed -i "s@^Exec=simple-scan.*@Exec=simple-scan@" "$DESKTOP_FILE"
fi

dconf update
