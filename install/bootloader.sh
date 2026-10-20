#!/bin/bash

grub-install --target=i386-pc "$disk"

if [[ "UEFI" == "$boot_mode" ]]; then
	grub-install \
	--target=x86_64-efi \
	--efi-directory="/boot/efi/" \
	--bootloader-id=GRUB \
	--removable
fi

grub-mkconfig -o "/boot/grub/grub.cfg"