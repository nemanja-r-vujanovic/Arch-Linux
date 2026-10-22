#!/bin/bash

# Backlight:
# cd "/sys/class/backlight/amdgpu_bl1/"
# echo "0" | sudo tee "brightness" > "/dev/null"

screen=$(xrandr | grep -i -w "connected" | awk '{print $1}')
xrandr --output "$screen" --mode "1920x1080"
xrandr --output "$screen" --brightness "0.85"
redshift -O "4000"