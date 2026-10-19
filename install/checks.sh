#!/bin/bash

# Superuser:
if (( 0 != "$EUID" )); then
	echo "Run script as root!"
	exit 1
fi

# Connection:
if ! ping -q -c 1 "www.google.com" > "/dev/null" 2>&1; then
	echo "Connect to network!"
	exit 1
fi

# Boot mode:
boot_mode="BIOS"
if [[ -d "/sys/firmware/efi/" ]]; then
	boot_mode="UEFI"
fi