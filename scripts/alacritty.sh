#!/bin/bash

cat > "$HOME/.config/alacritty/alacritty.toml" <<'EOF'
[font]
size = 20

[window]
opacity = 0.6
decorations = "Full"
padding = { x = 0, y = 0 }

[scrolling]
history = 100000

[cursor]
style = { shape = "Block", blinking = "Never" }
EOF

echo "Reload configs: Super + Shift + C"

echo -n "Press Enter to exit."
read Enter
echo
