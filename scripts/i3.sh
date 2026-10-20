#!/bin/bash

sed -i "s|exec i3-sensible-terminal|exec alacritty|g" "$HOME/.config/i3/config"
sed -i 's|bindsym \$mod+d exec --no-startup-id dmenu_run|bindsym $mod+d exec --no-startup-id "$HOME/sync/apps/scripts/dmenu.sh"|g' "$HOME/.config/i3/config"
sed -i "s|font pango:monospace 8|font pango:DejaVu Sans 20|g" "$HOME/.config/i3/config"
sed -i "s|#font pango:DejaVu Sans Mono 8|font pango:DejaVu Sans 20|g" "$HOME/.config/i3/config"

cat >> "$HOME/.config/i3/config" <<'EOF'

exec --no-startup-id "$HOME/sync/apps/scripts/brightness.sh"
exec --no-startup-id "$HOME/sync/apps/scripts/upgrade.sh"
exec --no-startup-id "$HOME/sync/apps/scripts/wireplumber.sh"
exec --no-startup-id "$HOME/sync/apps/scripts/policykit.sh"
exec --no-startup-id "$HOME/sync/apps/scripts/dunst.sh"
exec --no-startup-id "$HOME/sync/apps/scripts/xset.sh"
exec --no-startup-id "$HOME/sync/apps/scripts/nm-applet.sh"
exec --no-startup-id "$HOME/sync/apps/scripts/wallpaper.sh"

bindsym $mod+c exec "$HOME/sync/apps/sandbox/scripts/chromium-standard.sh"
bindsym $mod+i exec "$HOME/sync/apps/sandbox/scripts/chromium-incognito.sh"
bindsym $mod+b exec "$HOME/sync/apps/sandbox/scripts/chromium-sandboxed.sh"
bindsym $mod+p exec "$HOME/sync/apps/scripts/pcmanfm.sh"
bindsym $mod+Print exec --no-startup-id "$HOME/sync/apps/scripts/scrot.sh"
bindsym $mod+t exec --no-startup-id "$HOME/sync/apps/scripts/picom.sh"
bindsym $mod+Shift+p exec --no-startup-id "$HOME/sync/apps/scripts/autorandr.sh"

bar
{
	status_command i3status
	font pango:DejaVu Sans 20
	height 35
}
EOF

echo "Delete previous bar {} ':FROM,TOd'"

echo -n "Press Enter to exit."
read Enter
echo

vim "$HOME/.config/i3/config"