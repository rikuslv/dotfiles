#!/bin/bash

# Define the themes directory
THEME_DIR="$HOME/.config/waybar/themes"

# Get the list of folders (themes) and show them in Rofi
# It will show 'old', 'Pill-Style' or any other folder you have there
SELECTED_THEME=$(ls "$THEME_DIR" | rofi -dmenu -i -p "Waybar Theme" -theme ~/.config/rofi/wallpaper-launcher.rasi)

# Exit if no theme was selected (Esc pressed)
[ -z "$SELECTED_THEME" ] && exit

# Create symbolic links to the selected theme's files
# This points your main waybar config to the ones inside your 'old' or 'Pill-Style' folder
ln -sf "$THEME_DIR/$SELECTED_THEME/config" "$HOME/.config/waybar/config"
ln -sf "$THEME_DIR/$SELECTED_THEME/style.css" "$HOME/.config/waybar/style.css"

# Restart Waybar to apply changes
killall waybar
waybar &

# Send a notification in English
notify-send "Waybar Updated" "Switched to $SELECTED_THEME theme"
