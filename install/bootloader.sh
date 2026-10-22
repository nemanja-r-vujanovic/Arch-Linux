#!/bin/bash

grub-install --target=i386-pc "$disk"

grub-install \
--target=x86_64-efi \
--efi-directory="/boot/efi/" \
--bootloader-id=GRUB \
--removable \
--no-nvram

grub-mkconfig -o "/boot/grub/grub.cfg"