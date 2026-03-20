#  My Arch Linux Dotfiles

This repository contains my personal configurations for a Wayland-based setup on Arch Linux. 
The files are managed using **GNU Stow** to create symbolic links from this folder to `~/.config`.

## Quick Setup (New Machine)

If you are setting this up on a fresh install, follow these steps:

### 1. Install dependencies
```bash
sudo pacman -S git stow

## 2.Clone repository

git clone [https://github.com/rikuslv/dotfiles.git](https://github.com/rikuslv/dotfiles.git) ~/dotfiles
cd ~/dotfiles

## 3. Deploy configurations with Stow

This command will create symlinks for all folders in this directory:

stow */
Note: If you get "already exists" errors, use stow --adopt */ to link existing files.

WM: Hyprland

Bar: Waybar (Workspace circles & Pink capsules)

Terminal: Kitty

Runner: Rofi / Wofi

Tools: Fastfetch, Btop, Yazi, Wal, Flameshot, Wlogout

<div align="center">
<video src="showcase.mp4" width="100%" controls autoplay loop muted></video>
</div>
