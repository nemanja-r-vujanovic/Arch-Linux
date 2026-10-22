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
order += "disk /"
order += "cpu_usage"
order += "memory"
order += "battery all"
order += "tztime local"

wireless _first_
{
	format_up = "NET: %bitrate"
	format_down = ""
}

ethernet _first_
{
	format_up = "NET: %speed"
	format_down = ""
}

disk "/"
{
	format = "DSK: %avail"
}

cpu_usage
{
	format = "CPU: %usage"
}

memory
{
	format = "RAM: %used | %available"
	memory_used_method = "memavailable"
}

battery all
{
	format = "BAT: %percentage"
}

tztime local
{
	format = "DTM: %d.%m.%Y. – %H:%M:%S"
}
EOF