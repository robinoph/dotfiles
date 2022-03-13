#!/bin/bash

# First, check if playerctl is currently playing something. Don't return anything if nothing is playing
CHECK=$(playerctl status | grep -q -v 'Playing')
if [ $? -ne 0 ]; then
  echo ""
fi

TITLE=$(playerctl metadata | grep xesam:title | awk '{ s = ""; for (i = 3; i <= NF; i++) s = s $i " "; print s }')
ARTIST=$(playerctl metadata | grep xesam:artist | awk '{ s = ""; for (i = 3; i <= NF; i++) s = s $i " "; print s }')

echo "${TITLE} - ${ARTIST}"
