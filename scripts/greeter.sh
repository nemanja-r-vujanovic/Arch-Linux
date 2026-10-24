#!/bin/bash

cat > "/etc/lightdm/lightdm-gtk-greeter.conf" <<'EOF'
[greeter]
font-name = Sans 18
background = #000000
user-background = false
hide-user-image = true
clock-format = %a, %d.%m.%Y – %H:%M:%S
indicators = ~clock;~a11y;~power
screensaver-timeout = 0
EOF