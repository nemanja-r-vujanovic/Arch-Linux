#!/bin/bash

for (( i = 0; i < 3; i += 1 )); do
	pactl list short sources | while read -r id name rest; do
		if [[ "$name" != *.monitor ]]; then
			pactl set-source-volume "$id" 0%
			pactl set-source-mute "$id" 1
		fi
	done

	sleep 1
done