#!/bin/bash

sleep 2

if firejail --join="sandbox" mkdir -p "$HOME/downloads/"; then
	notify-send -t 3000 "Sandbox is running."
else
	notify-send -t 15000 "Cannot prepare sandbox!"
fi