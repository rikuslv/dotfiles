#!/bin/bash

WALLPAPER_DIR="$HOME/Pictures/Wallpapers"

# Uzģenerējam sarakstu, kur katram failam ir piesaistīta tā ikona
# Lietojam printf, lai izvairītos no dīvainiem simboliem
LIST=""
for img in $(ls "$WALLPAPER_DIR"); do
    LIST+="$img\x00icon\x1f$WALLPAPER_DIR/$img\n"
done

# Palaižam rofi
SELECTED_WALL=$(echo -e "$LIST" | rofi -dmenu \
    -i \
    -p "Background:" \
    -theme ~/.config/rofi/wallpaper-launcher.rasi)

# Ja nekas netika izvēlēts, izejam
[ -z "$SELECTED_WALL" ] && exit

# Pilnais ceļš
FULL_PATH="$WALLPAPER_DIR/$SELECTED_WALL"

# Iestatām tapeti un krāsas
awww img "$FULL_PATH" --transition-type center
wal -i "$FULL_PATH"
pkill -USR2 waybar
