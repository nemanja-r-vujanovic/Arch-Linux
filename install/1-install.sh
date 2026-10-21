#!/bin/bash

source "Arch-Linux/install/checks.sh"
source "Arch-Linux/install/font.sh"
source "Arch-Linux/install/ntp.sh"
source "Arch-Linux/install/clear.sh"
source "Arch-Linux/install/lsblk.sh"
source "Arch-Linux/install/inputs.sh"
source "Arch-Linux/install/partitioning.sh"
source "Arch-Linux/install/base.sh"
source "Arch-Linux/install/fstab.sh"

# ...

mkdir -p "/mnt/root/install/"
cp -r "Arch-Linux/install/." "/mnt/root/install/"

arch-chroot "/mnt/" "/bin/bash" -s -- \
"$timezone" "$username" "$hostname" "$password" "$disk" "$boot_mode" <<'CHROOT'
timezone="$1"
username="$2"
hostname="$3"
password="$4"
disk="$5"
boot_mode="$6"

scripts=(
	time locale hostname hosts root-passwd
	packages zram bootloader user-passwd sudo-wheel
)

for script in "${scripts[@]}"; do
	printf '\nRunning %s.sh...\n' "$script"
	source "/root/install/$script.sh"
done
CHROOT

if (( 0 != "$?" )); then
	echo "Installation stopped!"
	exit 1
fi

rm -r "/mnt/root/install/"

# ...

source "Arch-Linux/install/files.sh"
source "Arch-Linux/install/poweroff.sh"