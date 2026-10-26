#!/bin/bash

pacman -S -y --needed --noconfirm reflector
reflector --ipv4 \
--country Serbia,Bosnia,Croatia,Bulgaria,Romania \
--latest 10 \
--protocol https \
--sort rate \
--save "/etc/pacman.d/mirrorlist"

sed -i "/^#\[multilib\]$/,/^#Include = \/etc\/pacman.d\/mirrorlist$/s/^#//" "/etc/pacman.conf"
pacman -S -y -y                               # Refresh package databases

pacman -S --needed --noconfirm \
base linux linux-firmware sudo reflector \
networkmanager network-manager-applet \
bluez bluez-utils blueman \
ufw firejail chrony rsync pacman-contrib \
grub efibootmgr os-prober zram-generator \
dosfstools util-linux ntfs-3g ntfsprogs e2fsprogs exfatprogs gparted \
pipewire pipewire-alsa pipewire-pulse pipewire-jack wireplumber libpulse lib32-libpulse alsa-plugins lib32-alsa-plugins pavucontrol-qt \
mpv smplayer vokoscreen \
xorg xorg-server xorg-xinit \
lightdm lightdm-gtk-greeter \
xorg-xrandr autorandr redshift xclip \
zip unzip 7zip unrar tar tree \
chromium thunderbird libreoffice okular \
htop scrot flameshot parcellite bleachbit vim nano pfetch gnome-calculator \
gvfs gvfs-mtp \
pcmanfm lximage-qt xarchiver lxqt-admin alacritty \
libcups cups system-config-printer which \
i3-wm i3status dmenu ttf-dejavu xwallpaper picom libnotify dunst lxqt-policykit polkit udisks2 \
gnutls lib32-gnutls xdg-utils xdg-desktop-portal xdg-desktop-portal-gtk \
git python python-pip tk gcc bash \
mesa lib32-mesa vulkan-radeon lib32-vulkan-radeon vulkan-icd-loader lib32-vulkan-icd-loader vulkan-tools amd-ucode terminus-font

# Configure services:
systemctl enable ufw.service                  # Firewall
systemctl enable NetworkManager.service       # Networking
systemctl enable bluetooth.service            # Bluetooth
systemctl enable cups.service                 # Printing
systemctl enable polkit.service               # Authorization
systemctl enable chronyd.service              # Time synchronization
systemctl enable lightdm.service              # Graphical login
systemctl enable udisks2.service              # Removable drives
systemctl set-default graphical.target        # Boot into graphical mode
