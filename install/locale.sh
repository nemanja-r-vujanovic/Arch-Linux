#!/bin/bash

sed -i "s|^#en_US.UTF-8 UTF-8|en_US.UTF-8 UTF-8|" "/etc/locale.gen"
locale-gen

mkdir -p "/etc/X11/xorg.conf.d/"

cat > "/etc/X11/xorg.conf.d/00-keyboard.conf" <<'KEYBOARD'
Section "InputClass"
	Identifier "system-keyboard"
	MatchIsKeyboard "on"
	Option "XkbLayout" "me"
EndSection
KEYBOARD

echo "FONT=ter-132b
KEYMAP=sr-latin" > "/etc/vconsole.conf"

echo "LANG=en_US.UTF-8" > "/etc/locale.conf"

mkinitcpio -P