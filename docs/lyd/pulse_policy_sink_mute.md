---
title: "Lyd - Mute/Unmute en lydudgang"
category: "Lyd"
source: common/lyd/pulse_policy_sink_mute.sh
---

## Beskrivelse
Mute/Unmute har højere prioritet end volumen, så selv hvis volumen sættes til 80% kan det være, der ikke kommer lyd ud, fordi udgangen er mutet.

Ændringen tager først effekt efter genstart.

Inputparametre:
1. Aktiver - sæt hak medmindre du eks. kom til at køre scriptet med en forkert lydudgang, og ønsker at nulstille. 
2. Navn på lydudgang (nærmere specifikt en "pulseaudio sink"). Kør scriptet "Lyd - Udprint informationer omkring lydenheder" for at se navne på alle lydenheder på maskinen.
3. Mute: Sæt hak for at slå lyd FRA for lydudgangen

Tre eksempler på navne på lydenheder:
1. alsa_output.pci-0000_00_1f.3.analog-stereo
2. alsa_output.pci-0000_00_03.0.hdmi-stereo
3. alsa_output.pci-0000_04_00.1.hdmi-stereo-extra1