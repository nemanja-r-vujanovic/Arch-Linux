#!/bin/bash

sudo pacman -S --needed --noconfirm xcursor-vanilla-dmz

echo "Xcursor.theme: Vanilla-DMZ
Xcursor.size: 45" > "$HOME/.Xresources"

echo