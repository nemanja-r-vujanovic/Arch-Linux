#!/bin/bash

pactl list short sources | while read -r id name rest; do
	if [[ "$name" != *.monitor ]]; then
		pactl set-source-volume "$id" 0%
		pactl set-source-mute "$id" 1
	fi
done
