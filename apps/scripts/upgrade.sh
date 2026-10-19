#!/bin/bash

cntr=$(cat "$HOME/sync/apps/upgrade/counter.txt")

if [[ "0" == "$cntr" ]]; then
	sday=$(date -d "last sunday" +%d.%m.%Y.)
	echo "$sday" > "$HOME/sync/apps/upgrade/date.txt"
fi

dayw=$(date +"%A")

if [[ "Sunday" == "$dayw" ]]; then
	date=$(date +%d.%m.%Y.)
	last=$(cat "$HOME/sync/apps/upgrade/date.txt")

	if [[ "$date" != "$last" ]]; then
		for (( i = 0; i < 720; i++ )); do
			notify-send -t 15000 "Sunday = Upgrade!"
			sleep 60
		done
	fi
fi