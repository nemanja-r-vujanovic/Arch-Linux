#!/bin/bash

sudo cp -r "/etc/chromium/" "$HOME/sync/"
sudo cp "/etc/pacman.conf" "$HOME/sync/"
sudo cp "/etc/lightdm/lightdm-gtk-greeter.conf" "$HOME/sync/"
sudo cp "/etc/lightdm/lightdm.conf" "$HOME/sync/"
sudo cp "/etc/modprobe.d/" "$HOME/sync/"

mv "$HOME/.vimrc" "$HOME/sync/"
mv "$HOME/.bashrc" "$HOME/sync/"
mv "$HOME/.bash_aliases" "$HOME/sync/"
mv "$HOME/.Xresources" "$HOME/sync/"
mv "$HOME/.config/alacritty/" "$HOME/sync/"
mv "$HOME/.config/i3/" "$HOME/sync/"
mv "$HOME/.config/i3status/" "$HOME/sync/"
mv "$HOME/.config/dunst/" "$HOME/sync/"
mv "$HOME/.config/pcmanfm/" "$HOME/sync/"
mv "$HOME/.config/libfm/" "$HOME/sync/"

ln -s -T "$HOME/sync/.vimrc" "$HOME/.vimrc"
ln -s -T "$HOME/sync/.bashrc" "$HOME/.bashrc"
ln -s -T "$HOME/sync/.bash_aliases" "$HOME/.bash_aliases"
ln -s -T "$HOME/sync/.Xresources" "$HOME/.Xresources"
ln -s -T "$HOME/sync/alacritty" "$HOME/.config/alacritty"
ln -s -T "$HOME/sync/i3" "$HOME/.config/i3"
ln -s -T "$HOME/sync/i3status" "$HOME/.config/i3status"
ln -s -T "$HOME/sync/dunst" "$HOME/.config/dunst"
ln -s -T "$HOME/sync/pcmanfm" "$HOME/.config/pcmanfm"
ln -s -T "$HOME/sync/libfm" "$HOME/.config/libfm"

echo -e -n "\nPress Enter to exit."
read Enter
echo
