#!/bin/bash

echo '[global]
	font = "DejaVu Sans 20"
	history_length = 100

[urgency_low]
	timeout = 30s

[urgency_normal]
	timeout = 30s

[urgency_critical]
	timeout = 30s

[ignore_flameshot]
	appname = "flameshot"
	skip_display = true
	history_ignore = true' > "$HOME/.config/dunst/dunstrc"