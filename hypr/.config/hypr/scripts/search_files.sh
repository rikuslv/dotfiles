#!/bin/bash

# Izmantojam vienkāršu meklēšanu, kas strādā visur
# --dmenu liek wofi uzvesties kā meklētājam, nevis aplikāciju sarakstam
SELECTION=$(find $HOME -maxdepth 3 -not -path '*/.*' | wofi --show dmenu --prompt "Search file...")

if [ -n "$SELECTION" ]; then
    xdg-open "$SELECTION"
fi
