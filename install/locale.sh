#!/bin/bash

sed -i "s|^#en_US.UTF-8 UTF-8|en_US.UTF-8 UTF-8|" "/etc/locale.gen"
locale-gen

mkdir -p "/etc/X11/xorg.conf.d/"

cat > "/etc/X11/xorg.conf.d/00-keyboard.conf" <<'KEYBOARD'
Section "InputClass"
	Identifier "system-keyboard"
	MatchIsKeyboard "on"
	Option "XkbLayout" "me,rs"
	Option "XkbVariant" "latinalternatequotes,alternatequotes"
	Option "XkbOptions" "grp:alt_shift_toggle"
EndSection
KEYBOARD

cat > "/etc/X11/xorg.conf.d/90-input.conf" <<'MOUSE'
Section "InputClass"
	Identifier "Pointer speed"
	MatchIsPointer "on"
	Driver "libinput"
	Option "AccelSpeed" "1.00"
EndSection

Section "InputClass"
	Identifier "Touchpad settings"
	MatchIsTouchpad "on"
	Driver "libinput"
	Option "AccelSpeed" "0.25"
	Option "Tapping" "on"
EndSection
MOUSE

echo "FONT=ter-132b" > "/etc/vconsole.conf"

echo "LANG=en_US.UTF-8" > "/etc/locale.conf"

mkinitcpio -P