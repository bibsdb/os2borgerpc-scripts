---
title: "Lyd - Sæt volumen på lydudgang"
category: "Lyd"
source: common/lyd/pulse_policy_sink_volume.sh
---

## Beskrivelse
Specifikt sættes volumen på en "Pulseaudio sink".

Ændringen tager først effekt efter genstart.

Inputparametre:
1. Aktiver: Sæt hak medmindre du ønsker at nulstille sætning af lydniveau for lydenheden.
2. Lydenhed (sink): Navnet på lydenheden. Kør scriptet "Lyd - Udprint informationer omkring lydenheder" for at se navne på alle lydenheder på maskinen.
3. Lydniveau: Hvilket lydniveau du ønsker til lydenheden, angivet i procent, uden procenttegnet.

To eksempler på navne for lydenheder:
1. alsa_output.pci-0000_00_1f.3.analog-stereo
2. alsa_output.pci-0000_00_03.0.hdmi-stereo