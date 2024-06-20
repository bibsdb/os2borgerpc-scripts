---
title: "Fejlfinding - Netværk"
category: "Fejlfinding"
source: ""
---

## Beskrivelse
Undersøger om der er adgang til en netværksenhed (baseret på domænenavn eller IP) via ping og traceroute.

## Kode
#! /usr/bin/env sh

set -x

HOST="$1"

PINGS=5
HOPS=15
#TIMEOUT=45

ping -c $PINGS "$HOST"

tracepath -m $HOPS "$HOST"

# If the last command failed, try traceroute via tcp, in case it's specifically ICMP that's blocked
# # shellcheck disable=SC2181   # it would be less readable, especially if we decide to pass more arguments to it
#if [ $? != 0 ]; then
#  timeout --verbose $TIMEOUT traceroute --tcp --max-hops=$HOPS "$HOST"
#fi