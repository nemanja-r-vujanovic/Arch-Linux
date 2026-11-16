#!/bin/bash

for (( i = 0; i < 3; i += 1 )); do
	while read -r id name; do

	if [[ "$name" != *".monitor" ]]; then
		pactl set-source-volume "$id" 0%
		pactl set-source-mute "$id" 1
	fi

	done < <(pactl list short sources)

	sleep 1
done