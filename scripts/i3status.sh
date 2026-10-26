#!/bin/bash

cat > "$HOME/.config/i3status/config" <<'EOF'
general
{
	output_format = "i3bar"
	interval = 1
}

order += "battery 1"
order += "volume master"
order += "tztime local"

battery 1
{
	path = "/sys/class/power_supply/BAT1/uevent"
	last_full_capacity = true
	format = "BAT: %percentage %status |"
	format_percentage = "%.0f%s"
	format_down = ""
	status_chr = "(+)"
	status_bat = "(-)"
	status_full = ""
	status_idle = ""
	status_unk = ""
}

volume master
{
	device = "pulse"
	format = "VOL: %volume |"
	format_muted = "VOL: 0% |"
}

tztime local
{
	format = "DTM: %A, %d.%m.%Y. – %H:%M:%S |"
}
EOF
