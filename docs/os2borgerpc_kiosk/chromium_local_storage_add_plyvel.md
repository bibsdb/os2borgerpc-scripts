---
title: "OS2borgerPC Kiosk - Chromium: Tilføj data til Local Storage"
category: "OS2BorgerPC Kiosk"
source: 
---

## Beskrivelse
Kan tilføje tilfælde værdier for tilfælde hjemmesider i Chromium browserens "Local Storage".
Et eksempel på hvornår dette kan benyttes, er at bestemte hjemmesider gemmer "klik" på accept/nej tak til cookies i "Local Storage", så ved at sætte denne værdi, kan man skjule nogle cookie-popups.

En alternativ strategi til lige dét formål er at installere en browser-udvidelse til at fjerne cookie-popups. 
Det kræver dog at browser-udvidelsen kan identificere og fjerne den specifikke cookie-popup implementation.

Inputparametre:
1. URL: Den URL indstillingen skal sættes for
2. Nøgle: Navnet på attributten, der skal sættes
3. Værdi: Værdien på den navngivne attribut
4. Luk browser først?:
   Når browseren kører, sætter den en lås på "Local Storage" så andre ikke kan tilgå den. Derfor skal browseren lukkes for at opdatere databasen.
   Dette parameter er der grundlæggende hvis funktionaliteten skulle udvides til OS2borgerPC, og hvis scriptet skulle blive kørt i åbningstiden. Så kan det være man kun ønsker at køre det på tændte maskiner, hvor browseren ikke pt. kører.

Dette script kan omskrives til at understøtte andre Chromium-baserede browsere og/eller regulær OSborgerPC, hvis det ønskes.

## Kode
#! /usr/bin/env python3

import os
from urllib.parse import urlparse
from subprocess import check_output
from time import sleep
import sys

if b"kiosk" not in check_output(["get_os2borgerpc_config", "os2_product"]):
    print("This script is not designed to be run on a a regular OS2borgerPC machine.")
    sys.exit(1)

EXPECTED_ARG_COUNT = 4
if len(sys.argv) != EXPECTED_ARG_COUNT + 1:
    print(f"This script takes {EXPECTED_ARG_COUNT} arguments. Exiting.")
    sys.exit(1)

URL = sys.argv[1]
KEY = bytes(sys.argv[2], encoding="utf-8")
VALUE = bytes(sys.argv[3], encoding="utf-8")
KILL_BROWSER = sys.argv[4]

# TODO: Determine these programatically, so it works for both BPC and Kiosk AND Chrome/Chromium?
# Maybe only determine user/path1, but ask for which browser?
BROWSER_PROCESS_NAME = "chrome"
USER = "chrome"
DB_PATH_DIR = "/home/" + USER + "/snap/chromium/common/chromium/Default/Local Storage/"
DB_NAME = "leveldb/"
DB_PATH = DB_PATH_DIR + DB_NAME
PLYVEL_APT_PKG_NAME = "python3-plyvel"
PSUTIL_APT_PKG_NAME = "python3-psutil"

print(check_output(["apt-get", "update"]))
print(
    check_output(
        ["apt-get", "install", "--assume-yes", PLYVEL_APT_PKG_NAME, PSUTIL_APT_PKG_NAME]
    )
)

# Now these can be imported
import plyvel, psutil

browser_running = None
for proc in psutil.process_iter():
    if BROWSER_PROCESS_NAME in proc.name():
        browser_running = proc
        break

if browser_running:
    if KILL_BROWSER:
        # In order to modify Local Storage the browser can't be running. Shut it down.
        browser_running.kill()

        # Give the browser a bit of time to shut down
        sleep(5)
    else:
        print(
            "The browser is running and therefore we can't update LocalStorage - exiting"
        )
        sys.exit(1)

if not os.path.exists(DB_PATH_DIR):
    os.mkdir(DB_PATH_DIR)
    # Note: Use python builtins instead once they becomes less long-winded to use
    print(check_output(["chown", "--recursive", f"{USER}:{USER}", DB_PATH_DIR]))

print(f"About to connect to the leveldb DB_PATH: {DB_PATH}")

parsed_url = urlparse(URL)
url_key = parsed_url.scheme + "://" + parsed_url.netloc

db = plyvel.DB(DB_PATH, create_if_missing=True)
db.put(b"_" + str.encode(url_key) + b"\x00\x01" + KEY, b"\x01" + VALUE, sync=True)

db.close()

# Set the proper permissions on leveldb, as in some cases some files are now
# root owned which is no good, when chromium runs as a regular user:
print(check_output(["chown", "--recursive", f"{USER}:{USER}", DB_PATH_DIR]))

print("DB updated and connection closed.")