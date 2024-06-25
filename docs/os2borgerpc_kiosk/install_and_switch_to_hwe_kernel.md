---
title: "OS2borgerPC Kiosk - Installér og skift til HWE-kerne"
category: "OS2BorgerPC Kiosk"
source: os2borgerpc/os2borgerpc_kiosk/chromium_os2display_activate.sh
---

## Beskrivelse
Relevant hvis maskinen fejler og ikke kan starte chromium (den grafiske brugerflade) efter kørsel af autostart chromium,
som er et problem i Ubuntu Server 20.04 set på NUC model Intel® NUC 11 Pro Kit NUC11TNKi5.

Specifikt kan det ske, den ikke kan opstarte, fordi relevante drivere ikke er installeret. 
At skifte til HWE-kernen vil give en langt nyere kerneversion, som muligvis supporterer den nye hardware.

Dette script er blevet testet og virker på Ubuntu 22.04.