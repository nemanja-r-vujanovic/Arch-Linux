#!/bin/bash

cat > "$HOME/.config/alacritty/alacritty.toml" <<'EOF'
[font]
size = 20

[scrolling]
history = 10000

[window]
opacity = 0.6
decorations = "Full"
padding = {
	x = 0,
	y = 0,
}

[cursor]
style = {
	shape = "Block",
	blinking = "Never",
}
EOF

echo "Reload i3 config: Super + Shift + C"

echo -n "Press Enter to exit."
read Enter
echo