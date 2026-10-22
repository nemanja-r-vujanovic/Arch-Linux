#!/bin/bash

cat > "$HOME/.config/i3status/config" <<'EOF'
general
{
	output_format = "i3bar"
	colors = true
	interval = 1
}

order += "wireless _first_"
order += "ethernet _first_"
order += "battery all"
order += "volume master"
order += "tztime local"

wireless _first_
{
	format_up = "NET: %bitrate (%essid) |"
	format_down = ""
}

ethernet _first_
{
	format_up = "NET: %speed |"
	format_down = ""
}

battery all
{
	format = "BAT: %percentage (%status) |"
	format_percentage = "%.0f%s"
	format_down = ""
	status_chr = "charging"
	status_bat = "discharging"
	status_full = "fully charged"
	status_idle = "not charging"
	status_unk = "unknown"
}

volume master
{
	device = "pulse"
	format = "VOL: %volume |"
	format_muted = "VOL: 0% |"
}

tztime local
{
	format = "DTM: %a, %d.%m.%Y. – %H:%M:%S |"
}
EOF