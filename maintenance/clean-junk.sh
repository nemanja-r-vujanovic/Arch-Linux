#!/bin/bash

if (( 0 != "$EUID" )); then
	echo "Run script as root!"
	exit 1
fi

cd "$HOME/sync/apps/sandbox/launchers/"
cp *".desktop" "/usr/share/applications/"

cd "$HOME/.local/share/applications/"
mv *".desktop" "$HOME/sync/apps/removed/"

cd "/usr/share/templates/"
mv *".desktop" "$HOME/sync/apps/removed/"

cd "/usr/share/applications/"
mv "chromium.desktop" "$HOME/sync/apps/removed/"

cd "$HOME/sync/apps/removed/"
mv *"autostart"* "/usr/share/applications/"

# Ventoy ...

rm "$HOME/sync/apps/removed/delete.txt"
rm "$HOME/.viminfo"

rm -r "$HOME/.copilot/"
rm -r "$HOME/thunderbird/"
rm -r "$HOME/Downloads/"
rm -r "$HOME/ViberDownloads/PTT/"

if [[ -d "$HOME/.local/share/Trash/" ]]; then
	rm -r "$HOME/.local/share/Trash/files/"*
	rm -r "$HOME/.local/share/Trash/info/"*
fi
