#!/bin/bash

sleep 2

firejail --join=sandbox mkdir -p "$HOME/downloads/"

if ! firejail --list | grep -q "sandbox"; then
	notify-send -t 15000 "Cannot find sandbox!"
fi