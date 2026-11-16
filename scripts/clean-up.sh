#!/bin/bash

rm "$HOME/first-boot.md"
rm -r "$HOME/sync/scripts/"

sudo pacman -R -n -s \
xterm \
firefox \
l3afpad \
cmake