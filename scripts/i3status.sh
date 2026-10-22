#!/bin/bash

cat > "$HOME/.config/i3status/config" <<'EOF'
general
{
    interval = 1
}

order += "battery all"
order += "tztime local"

battery all
{
    format = "BAT: %percentage |"
}

tztime local
{
    format = "DTM: %d.%m.%Y. – %H:%M:%S"
}
EOF