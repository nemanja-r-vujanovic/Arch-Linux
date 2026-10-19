#!/bin/bash

git clone "https://github.com/nemanja-r-vujanovic/Arch-Linux.git" "/tmp/Archie/"
sed -i "s|USERNAME_TO_BE_CHANGED|$username|g" "/tmp/Archie/apps/sandbox/launchers/"*".desktop"

mkdir -p "/mnt/home/$username/"
mv "/tmp/Archie/" "/mnt/home/$username/"
mv "/mnt/home/$username/Archie/first-boot.md" "/mnt/home/$username/"

mkdir -p "/mnt/home/$username/sync/"
mv "/mnt/home/$username/Archie/scripts/" "/mnt/home/$username/sync/"
mv "/mnt/home/$username/Archie/wallpapers/" "/mnt/home/$username/sync/"
mv "/mnt/home/$username/Archie/maintenance/" "/mnt/home/$username/sync/"
mv "/mnt/home/$username/Archie/apps/" "/mnt/home/$username/sync/"
mv "/mnt/home/$username/Archie/shortcuts/" "/mnt/home/$username/sync/"

chmod +x "/mnt/home/$username/sync/scripts/"*".sh"
chmod +x "/mnt/home/$username/sync/maintenance/"*".sh"
chmod +x "/mnt/home/$username/sync/apps/sandbox/scripts/"*".sh"
chmod +x "/mnt/home/$username/sync/apps/scripts/"*".sh"
chmod +x "/mnt/home/$username/sync/apps/installed/"*".sh"

rm -r "/mnt/home/$username/Archie/"

# Fix ownership:
arch-chroot "/mnt/" chown -R "$username":"users" "/home/$username/"