#!/bin/bash

# First, check if playerctl is currently playing something. Exit the script if that is not the case
if [ $(playerctl status | grep -q -v 'Playing')]; then
  exit 1
fi

TITLE=$(playerctl metadata | grep xesam:title | awk '{ s = ""; for (i = 3; i <= NF; i++) s = s $i " "; print s }')
ARTIST=$(playerctl metadata | grep xesam:artist | awk '{ s = ""; for (i = 3; i <= NF; i++) s = s $i " "; print s }')

echo "${TITLE} - ${ARTIST}"
