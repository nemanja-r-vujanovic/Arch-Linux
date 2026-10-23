#!/bin/bash

if ! ping -q -c 1 "www.google.com" > "/dev/null" 2>&1; then
	echo "Connect to network!"
	exit 1
fi

echo "Uncomment: #Color
Add: ParallelDownloads = 5"

echo -n "Press Enter to exit."
read Enter
echo

sudo vim "/etc/pacman.conf"