#!/bin/bash

pacman -S -y --needed --noconfirm \
dosfstools \
util-linux \
ntfs-3g \
ntfsprogs \
e2fsprogs

wipefs -a "$disk"
parted --script "$disk" mklabel gpt

# Partitioning (GPT):
# EFI → Size: 512 MB → File System: fat32 → Mount Point: /boot/efi/ → Label: efi → Flags: boot, esp
# BIOS → Size: 8 MB → File System: cleared/unformatted → Flags: bios_grub
# Swap → Size: 4096 MB → File System: linux-swap → Label: swap
# Local → Size: 2048 MB → File System: ntfs → Label: local → Flags: msftdata
# Root → Size: Remaining MB → File System: ext4 → Mount Point: / → Label: arch

# Size:
start="1"
efi="$((start + 512))"
bios="$((efi + 8))"
swap="$((bios + 4096))"
locl="$((swap + 2048))"
root="100%"

# EFI:
parted --script "$disk" mkpart primary fat32 "$start"MiB "$efi"MiB
parted --script "$disk" name 1 "efi"
parted --script "$disk" set 1 boot on
parted --script "$disk" set 1 esp on

# BIOS:
parted --script "$disk" mkpart primary "$efi"MiB "$bios"MiB
parted --script "$disk" name 2 "bios"
parted --script "$disk" set 2 bios_grub on

# Swap:
parted --script "$disk" mkpart primary linux-swap "$bios"MiB "$swap"MiB
parted --script "$disk" name 3 "swap"

# Local:
parted --script "$disk" mkpart primary ntfs "$swap"MiB "$locl"MiB
parted --script "$disk" name 4 "local"
parted --script "$disk" set 4 msftdata on

# Root:
parted --script "$disk" mkpart primary ext4 "$locl"MiB "$root"MiB
parted --script "$disk" name 5 "arch"

partprobe "$disk"
udevadm settle

# Partition device names (nvme uses p1, sata uses 1):
if [[ "$disk" =~ nvme|mmcblk ]]; then
	P1="${disk}p1"; P2="${disk}p2"; P3="${disk}p3"; P4="${disk}p4"; P5="${disk}p5"
else
	P1="${disk}1"; P2="${disk}2"; P3="${disk}3"; P4="${disk}4"; P5="${disk}5"
fi

# Format partitions:
mkfs.fat -F 32 -n "efi" "$P1" # EFI
wipefs -a "$P2"               # BIOS
mkswap -L "swap" "$P3"        # Swap
mkfs.ntfs -Q -L "local" "$P4" # Local
mkfs.ext4 -F -L "arch" "$P5"  # Root

# Mount partitions:
mount -t ext4 "$P5" "/mnt/"
if [[ "UEFI" == "$boot_mode" ]]; then
	mount --mkdir -o umask=0077 "$P1" "/mnt/boot/efi/"
fi
swapon "$P3"

lsblk "$disk"                 # Show result

seconds=10
echo -e "\nPartitioning completed.\nInstallation starts in $seconds seconds..."
sleep "$seconds"