#!/bin/bash

sed -i \
"s|exec i3-sensible-terminal|exec alacritty|g" \
"$HOME/.config/i3/config"

sed -i \
's|bindsym \$mod+d exec --no-startup-id dmenu_run|bindsym $mod+d exec --no-startup-id "$HOME/sync/apps/scripts/dmenu.sh"|g' \
"$HOME/.config/i3/config"

sed -i \
"s|font pango:monospace 8|font pango:DejaVu Sans 20|g" \
"$HOME/.config/i3/config"

sed -i \
"s|#font pango:DejaVu Sans Mono 8|font pango:DejaVu Sans 20|g" \
"$HOME/.config/i3/config"

sed -i \
's|bindsym XF86AudioMute .*|bindsym $mod+F1 exec --no-startup-id pactl set-sink-mute @DEFAULT_SINK@ toggle \&\& $refresh_i3status|' \
"$HOME/.config/i3/config"

sed -i \
's|bindsym XF86AudioLowerVolume .*|bindsym $mod+F2 exec --no-startup-id pactl set-sink-volume @DEFAULT_SINK@ -1% \&\& $refresh_i3status|' \
"$HOME/.config/i3/config"

sed -i \
's|bindsym XF86AudioRaiseVolume .*|bindsym $mod+F3 exec --no-startup-id pactl set-sink-volume @DEFAULT_SINK@ +1% \&\& $refresh_i3status|' \
"$HOME/.config/i3/config"

cat >> "$HOME/.config/i3/config" <<'EOF'

# Minimize.
bindsym $mod+Ctrl+s fullscreen disable, floating enable, resize set 70 ppt 70 ppt, move position center

# Maximize.
bindsym $mod+Ctrl+f fullscreen disable, floating enable, resize set 100 ppt 100 ppt, move position 0 ppt 0 ppt

# Halves: top, bottom, left, right.
bindsym $mod+Ctrl+w fullscreen disable, floating enable, resize set 100 ppt 50 ppt, move position 0 ppt 0 ppt
bindsym $mod+Ctrl+x fullscreen disable, floating enable, resize set 100 ppt 50 ppt, move position 0 ppt 50 ppt
bindsym $mod+Ctrl+a fullscreen disable, floating enable, resize set 50 ppt 100 ppt, move position 0 ppt 0 ppt
bindsym $mod+Ctrl+d fullscreen disable, floating enable, resize set 50 ppt 100 ppt, move position 50 ppt 0 ppt

# Corners: top-left, top-right, bottom-left, bottom-right.
bindsym $mod+Ctrl+q fullscreen disable, floating enable, resize set 50 ppt 50 ppt, move position 0 ppt 0 ppt
bindsym $mod+Ctrl+e fullscreen disable, floating enable, resize set 50 ppt 50 ppt, move position 50 ppt 0 ppt
bindsym $mod+Ctrl+y fullscreen disable, floating enable, resize set 50 ppt 50 ppt, move position 0 ppt 50 ppt
bindsym $mod+Ctrl+c fullscreen disable, floating enable, resize set 50 ppt 50 ppt, move position 50 ppt 50 ppt

exec --no-startup-id "$HOME/sync/apps/scripts/display.sh"
exec --no-startup-id "$HOME/sync/apps/scripts/wallpaper.sh"
exec --no-startup-id "$HOME/sync/apps/scripts/picom.sh"
exec --no-startup-id "$HOME/sync/apps/scripts/dunst.sh"
exec --no-startup-id "$HOME/sync/apps/scripts/microphone.sh"
exec --no-startup-id "$HOME/sync/apps/scripts/wireplumber.sh"
exec --no-startup-id "$HOME/sync/apps/scripts/xrdb.sh"
exec --no-startup-id "$HOME/sync/apps/scripts/xset.sh"
exec --no-startup-id "$HOME/sync/apps/scripts/nm-applet.sh"
exec --no-startup-id "$HOME/sync/apps/scripts/parcellite.sh"
exec --no-startup-id "$HOME/sync/apps/scripts/policykit.sh"
exec --no-startup-id "$HOME/sync/apps/scripts/upgrade.sh"

bindsym $mod+b exec --no-startup-id "$HOME/sync/apps/sandbox/scripts/chromium-sandboxed.sh"
bindsym $mod+c exec --no-startup-id "$HOME/sync/apps/sandbox/scripts/chromium-standard.sh"
bindsym $mod+i exec --no-startup-id "$HOME/sync/apps/sandbox/scripts/chromium-incognito.sh"
bindsym $mod+p exec --no-startup-id "$HOME/sync/apps/scripts/pcmanfm.sh"
bindsym $mod+t exec --no-startup-id "$HOME/sync/apps/scripts/picom.sh"

bindsym $mod+Print exec --no-startup-id "$HOME/sync/apps/scripts/scrot.sh"
bindsym $mod+Shift+p exec --no-startup-id "$HOME/sync/apps/scripts/autorandr.sh"
bindsym Ctrl+$mod+BackSpace exec --no-startup-id "$HOME/sync/apps/scripts/poweroff.sh"

bar
{
	status_command i3status
	height 35
	font pango:DejaVu Sans 20

	colors
	{
		background #000000
	}
}
EOF

echo "Delete previous bar {} \":188,190d\""

echo -n "Press Enter to exit."
read Enter
echo

vim "$HOME/.config/i3/config"