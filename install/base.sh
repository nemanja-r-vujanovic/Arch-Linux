#!/bin/bash

pacman -S -y --needed --noconfirm archlinux-keyring
pacman-key --init
pacman-key --populate archlinux

pacman -S -y --needed --noconfirm reflector
reflector --ipv4 \
--country Serbia,Bosnia,Croatia,Bulgaria,Romania \
--latest 10 \
--protocol https \
--sort rate \
--save "/etc/pacman.d/mirrorlist"

pacman -S -y -y # Refresh package databases

pacstrap -K "/mnt/" base linux linux-firmware sudo vim amd-ucode