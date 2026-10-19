#!/bin/bash

disk="/dev/sda"
timezone="Europe/Belgrade"
username="user"
hostname="arch-btw"
password="student"
confirm_password="$password"
confirm_install="YES"

# Disk:
echo -e -n "\nEnter disk (example: /dev/sda or /dev/nvme0n1): "
read disk

if (( "${#disk}" < 1 )); then
	echo "Disk cannot be empty!"
	exit 1
fi
if [[ ! -b "$disk" ]]; then
	echo "'$disk' is not a block device!"
	exit 1
fi
if [[ "$(lsblk -d -n -o TYPE "$disk")" != "disk" ]]; then
	echo "'$disk' is not a whole disk!"
	exit 1
fi

# Timezone:
echo -n "Enter timezone (example: Europe/Belgrade): "
read timezone

if (( "${#timezone}" < 1 )); then
	echo "Timezone cannot be empty!"
	exit 1
fi
if [[ ! -e "/usr/share/zoneinfo/$timezone" ]]; then
	echo "Timezone not found: $timezone!"
	exit 1
fi

# Username:
echo -n "Enter username (example: user): "
read username

if (( "${#username}" < 1 )); then
	echo "Username cannot be empty!"
	exit 1
fi

# Hostname:
echo -n "Enter hostname (example: arch-btw): "
read hostname

if (( "${#hostname}" < 1 )); then
	echo "Hostname cannot be empty!"
	exit 1
fi

# Password:
echo -n "Enter password: "
read -s password
echo

if (( "${#password}" < 6 )); then
	echo "Password is too short!"
	exit 1
fi

# Confirm password:
echo -n "Confirm password: "
read -s confirm_password
echo

if [[ "$confirm_password" != "$password" ]]; then
	echo "Passwords did not match!"
	exit 1
fi

# Confirm install:
echo -e "\nWARNING: ALL DATA ON $disk WILL BE LOST!"
echo -n "Type YES to continue: "
read confirm_install

confirm_install_upper=$(echo "$confirm_install" | tr '[:lower:]' '[:upper:]')

if [[ "YES" != "$confirm_install_upper" ]]; then
	echo -e "\nInstallation aborted!"
	exit 1
fi