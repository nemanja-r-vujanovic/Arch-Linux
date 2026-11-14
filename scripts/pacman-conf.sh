#!/bin/bash

echo "Uncomment: #Color
Keep: ParallelDownloads = 5"

echo -n "Press Enter to exit."
read Enter
echo

sudo vim "/etc/pacman.conf"