#!/bin/bash
dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP
lxpolkit &
foot --server &
mako &
waybar &
swaybg -i ~/.config/sway/wallpaper &
gammastep -l 50.85045:4.34878 &
gsettings set org.gnome.desktop.interface gtk-theme Arc-Darker
gsettings set org.gnome.desktop.interface icon-theme Paper
$HOME/.local/bin/lock.sh
