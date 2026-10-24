#!/bin/bash

# Chromium:
: <<'NOTES'
echo "[Desktop Entry]
Name=Chromium
Exec=/home/$USER/sync/apps/sandbox/scripts/chromium-standard.sh
Icon=/home/$USER/sync/apps/sandbox/icons/chromium-standard.png
Type=Application
Terminal=false
GenericName=
Comment=
Categories=Network;" | sudo tee "/usr/share/applications/chromium.desktop" > "/dev/null"
NOTES

# Incognito Chromium:
: <<'NOTES'
echo "[Desktop Entry]
Name=Incognito Chromium
Exec=/home/$USER/sync/apps/sandbox/scripts/chromium-incognito.sh
Icon=/home/$USER/sync/apps/sandbox/icons/chromium-incognito.png
Type=Application
Terminal=false
GenericName=
Comment=
Categories=Network;" | sudo tee "/usr/share/applications/incognito_chromium.desktop" > "/dev/null"
NOTES

# Sandboxed Chromium:
: <<'NOTES'
echo "[Desktop Entry]
Name=Sandboxed Chromium
Exec=/home/$USER/sync/apps/sandbox/scripts/chromium-sandboxed.sh
Icon=/home/$USER/sync/apps/sandbox/icons/chromium-sandboxed.png
Type=Application
Terminal=false
GenericName=
Comment=
Categories=Network;" | sudo tee "/usr/share/applications/sandboxed_chromium.desktop" > "/dev/null"
NOTES

# Viber:
# mv "viber.AppImage" "$HOME/sync/apps/installed/"
# cd "$HOME/sync/apps/installed/"
# chmod +x *".AppImage"
# ./"viber.AppImage"
: <<'NOTES'
echo "[Desktop Entry]
Name=Viber
Exec=/home/$USER/sync/apps/installed/viber.AppImage
Icon=viber
Type=Application
Terminal=false
GenericName=
Comment=
Categories=Network;" | sudo tee "/usr/share/applications/viber.desktop" > "/dev/null"
NOTES

# XAMPP:
# mv "xampp-linux"*"installer.run" "$HOME/sync/apps/installed/"
# cd "$HOME/sync/apps/installed/"
# chmod +x *".run"
# sudo ./"xampp-linux"*"installer.run"
# Uncheck: XAMPP Developer Files
: <<'NOTES'
echo "[Desktop Entry]
Name=XAMPP
Path=/opt/lampp
Exec=sudo /opt/lampp/manager-linux-x64.run
Icon=xampp
Type=Application
Terminal=false
GenericName=
Comment=
Categories=Development;" | sudo tee "/usr/share/applications/xampp.desktop" > "/dev/null"
NOTES
# echo "$USER ALL=(root) NOPASSWD: /opt/lampp/manager-linux-x64.run" | sudo tee "/etc/sudoers.d/xampp" > "/dev/null"
# sudo chmod u=r,g=r,o= "/etc/sudoers.d/xampp"
# sudo visudo -cf "/etc/sudoers.d/xampp" > "/dev/null"
# sudo pacman -S --needed --noconfirm libxcrypt-compat inetutils

# Check:
# menu://applications/
# admin:///usr/share/applications/
# $HOME/.local/share/applications/
# $HOME/.config/lxqt/
# $HOME/.local/share/Trash/

# Python modules:
# mkdir -p "$HOME/sync/apps/python-modules/"
# cd "$HOME/sync/apps/python-modules/"
# python3 -m venv ".venv/"
# source ".venv/bin/activate"
# pip install PyQt6
# pip install yt-dlp
# pip freeze > "requirements.txt"
# pip install -r "requirements.txt"
# deactivate
# rm -r ".venv/"

# LibreOffice Writer:
# User Interface... → Tabbed → Apply to All
# Tools → AutoCorrect → While Typing: Off → Apply
# Tools → AutoCorrect → AutoCorrect Options → Options → Bulleted and numbered lists. Bullet symbol: Off → OK

# Remove LibreOffice recently used font colors:
# Close LibreOffice completely
# cp "$HOME/.config/libreoffice/4/user/registrymodifications.xcu" "$HOME/.config/libreoffice/4/user/registrymodifications.xcu.bak"
# vim "$HOME/.config/libreoffice/4/user/registrymodifications.xcu"
# Search for "RecentColor" entries
# Delete <item ... oor:name="RecentColor" ... </item>
# Delete <item ... oor:name="RecentColorName" ... </item>

# Visual Studio Code:
# Exstension: Python (by ms-python)
# touch "test.py"
# Properties → Open With: Code - OSS
# Manage → Trust → Configure your settings
# Security Workspace Trust: Untrusted Files: open
# Security Workspace Trust: Startup Prompt: never
# Security Workspace Trust: Enabled: Off → Cancel
# Security Workspace Trust: Empty Window: Off
# Security Workspace Trust: Banner: never
# Select Python Interpreter (only if needed): Python Recommended
# File → Preferences → Settings
# Editor: Font Size: 32
# Terminal Integrated: Font Size: 32
# Python Terminal: Execute in File Dir: On
# File → Preferences → Keyboard Shortcuts
# Python: Run Python File in Terminal: F5

# BleachBit:
# Bash: Temporary files: On, History: Off
# Chromium: All Off
# Deep scan: All Off
# journald: All On
# LibreOffice: All On
# pacman: All On
# snap: All On
# System: Recommended only
# Thumbnails: All On
# Thunderbird: All Off
# X11: All On

# SMPlayer:
# Options → Preferences → Advanced → MPlayer/mpv → Options: -loop → OK

# Lutris settings:
# Automatically Update the Lutris runtime: Off
# Keep your game library synced with Lutris.net: Off
# Sources: All off
# Runners: Wine (wine-ge-8-26) / GE-Proton (Latest) (default)
# Minimize client when a game is launched: On
# Theme: Light

# Installing game:
# Add locally installed game
# Name:
# Runner: Wine (Runs Windows Games)
# Executable: path_to_exe
# Prefix architecture: Auto (default)
# Wine version: System (11.14)

# Recover deleted files:
# Perform from USB live system!
# sudo photorec
# Select physical disk containing the deleted files
# Select appropriate partition
# Choose File Opt only if particular file type is needed
# Select Search
# Select filesystem type: ext2/ext3/ext4 or NTFS/FAT/exFAT
# Select Free or Whole (only if filesystems are damaged/corrupted)
# Choose a recovery destination on a different disk/filesystem (example: /run/media/user/USB/)
# Press C to confirm the destination and begin recovery

# VirtualBox Extension Pack:
# mkdir -p "$HOME/VirtualBox/"
# mv "Oracle_VirtualBox_Extension_Pack"*".vbox-extpack" "$HOME/VirtualBox/"

# Download from official sites:
# Viber (AppImage)
# XAMPP (run)
# Ventoy (tar.gz)
# Android Studio (tar.gz)

# Other packages:
# code                                               # Visual Studio Code
# netbeans                                           # Java GUI designer
# glade                                              # C GUI designer
# nodejs npm                                         # Web and mobile apps
# sqlitebrowser                                      # SQLite browser
# audacity                                           # Audio editor
# wine wine-mono                                     # Wine emulator
# lutris                                             # Lutris emulator
# persepolis                                         # Download manager
# qbittorrent                                        # Torrent client
# gimp                                               # Adobe Photoshop alternative
# kdenlive                                           # Camtasia Studio alternative
# kolourpaint                                        # Microsoft Paint alternative
# virtualbox virtualbox-host-dkms dkms linux-headers # VirtualBox
# ...
# xscreensaver                                       # Screensaver
# papirus-icon-theme                                 # Icon theme
# adwaita-icon-theme                                 # Icon theme
# breeze                                             # Theme
# pdftk                                              # PDF toolkit
# poppler                                            # PDF render
# perl-image-exiftool                                # PDF metadata
# tesseract-data-eng                                 # Tesseract OCR engine
# vanilla-dmz                                        # Minimal mouse cursor
# ...
# Replaced with i3:
# lxqt                                               # Desktop environment
# lxqt-session                                       # Session manager
# openbox                                            # Window manager

# Import Chromium bookmarks:
## chrome://bookmarks/
## Top right corner → 3 vertical dots
## Import bookmarks → Desktop/ → Select bookmarks HTML file → Open
# Export Chromium bookmarks:
## chrome://bookmarks/
## Top right corner → 3 vertical dots
## Export bookmarks → Desktop/ → Save

# ThunderBird → ImportExportTools NG extension
# Export:
## Inbox → ImportExportTools NG → Export All Messages In Folder → Plain Text Format → Messages, Index and Attachments with Subfolder → OK → Desktop/ → Open
## Sent → ImportExportTools NG → Export All Messages In Folder → Plain Text Format → Messages, Index and Attachments with Subfolder → OK → Desktop/ → Open
# Import:
## Inbox → ImportExportTools NG → Import EML Messages → Individual EML Messages → File type: All files (*.*) → Select all Inbox TXT files → Open
## Sent → ImportExportTools NG → Import EML Messages → Individual EML Messages → File type: All files (*.*) → Select all Sent TXT files → Open

# Browser bookmarks: google.com (Google), youtube.com (YouTube), chess.com/home (Chess), chatgpt.com (ChatGPT), github.com/nemanja-r-vujanovic?tab=repositories (GitHub), ar.asss.edu.rs (ASSS-AR), onedrive.live.com/my (OneDrive), outlook.live.com/mail/ (Outlook), wiki.archlinux.org (ArchWiki), supabase.com/dashboard/organizations (Supabase)

# Journald:
# sudo vim "/etc/systemd/journald.conf"
# SystemMaxUse=256M
# MaxRetentionSec=7day
# sudo systemctl restart systemd-journald

# Grub customizer without grub customizer:
# sudo vim "/etc/default/grub"

: <<'NOTES'
GRUB_TIMEOUT_STYLE="menu"
GRUB_GFXMODE="800x600"
GRUB_GFXPAYLOAD_LINUX="keep"
GRUB_DEFAULT="Arch Linux"
GRUB_DISTRIBUTOR="Arch"
GRUB_TIMEOUT="2"
GRUB_CMDLINE_LINUX_DEFAULT="loglevel=3 quiet"
NOTES

# sudo grub-mkconfig -o "/boot/grub/grub.cfg"
# sudo vim "/boot/grub/grub.cfg"

# Delete completely:
# submenu 'Advanced options for Arch Linux' ... {}
: <<'NOTES'
### BEGIN /etc/grub.d/30_uefi-firmware ###
if [ "$grub_platform" = "efi" ]; then
	fwsetup --is-supported
	if [ "$?" = 0 ]; then
		menuentry 'UEFI Firmware Settings' $menuentry_id_option 'uefi-firmware' {
			fwsetup
		}
	fi
fi
### END /etc/grub.d/30_uefi-firmware ###
NOTES

# System installed (date):
# stat / | grep -i "birth"

# Remove programs from Open With:
# vim "$HOME/.config/mimeapps.list"

# USB formating:
# lsblk                                              # List disk partitions
# sudo umount "/dev/sdx"*                            # Unmount drive
# sudo wipefs --all "/dev/sdx"                       # sudo dd if="/dev/zero" of="/dev/sdy" status=progress
# sudo cfdisk "/dev/sdx"                             # Create partition → dos → New → Enter → primary → Write → yes → Quit
# sudo mkfs.ntfs -Q -L "Label" "/dev/sdxy"
# sudo mkfs.ext4 -F -L "Label" "/dev/sdxy"

# Safe remove USB on Linux:
# sudo umount "/dev/sdxy"
# sudo eject "/dev/sdx"

# Post HTML pages on GitHub:
# Repo → Settings → Pages → Build and deployment
# Source: Deploy from a branch
# Branch: main
# Folder: /docs
# Save
# Chromium → username.github.io/reponame

# Git restore deleted:
# mkdir -p "$HOME/git-restored/"
# cd "$HOME/git-restored/"
# git clone "https://github.com/username/reponame.git"
# cd "$HOME/git-restored/reponame/"
# git status
# git log --oneline --all
# git restore --source=ABCDEFG -- "Deleted"
# git status
# git add "Deleted"

# PDF editing:
# pdftk "input.pdf" cat 2-end output "output.pdf"
# pdftk "input.pdf" cat 1-123 output "output.pdf"
# pdftk *".pdf" cat output "merged_pdfs.pdf"

# Convert PDF to DOCX:
# lowriter --headless --infilter="writer_pdf_import" --convert-to docx "file.pdf"

# Convert PDF to TXT:
# pdftotext "file.pdf" "file.txt"

# Convert PNG to TXT:
# tesseract "image.png" "file"

# xclip clipboard:
# xclip -selection clipboard < /path_to_file

# Print 158. line from file
# sed -n '158p' "file"

# Print 140-160 lines from file
# sed -n '140,160p' "file"

: <<'NOTES'
exiftool

exiftool -Title="HERE TITLE" \
		 -Author="HERE AUTHOR" \
		 -Creator="HERE CREATOR" \
		 -Producer="LibreOffice" \
		 "HERE FILENAME"

exiftool "HERE FILENAME"
NOTES

# SSH and SFTP:
# sudo pacman -S --needed --noconfirm fail2ban
# TODO: configure fail2ban!

# Samba:
# smbclient -L //localhost -N                        # List all shares
# smbclient //localhost/shared -N                    # List specific share
# ls
# pwd
# cd "dir/"
# cd "../"
# get "file.txt"                                     # Download one file
# get "file.txt" "localname.txt"                     # Download and rename
# put "localfile.txt"                                # Upload one file
# mput *".pdf"                                       # Upload multiple files
# del "file.txt"                                     # Delete one file
# rmdir "dir/"                                       # Delete one folder
# exit

# VirtualBox Enable Drag & Drop
# Update and Upgrade
# Devices → Insert Guest Additions CD image
# sudo "path_to_cd/VBoxLinuxAdditions.run"
# Devices → Drag and Drop → Host To Guest
# Devices → Upgrade Guest Additions
# systemctl poweroff

# VirtualBox Enable USB
# VirtualBox Settings → USB → Add new USB device filter + → Select USB → Select USB 3.0

# Fix VirtualBox (only if needed):
# sudo usermod -a -G vboxusers "$USER"
# sudo modprobe -r kvm_amd
# sudo modprobe -r kvm

# Fix install (only if needed):
# sudo pacman -S -y -y

# Fix upgrade 1 (only if needed):
: <<'NOTES'
pacman -S -y --needed --noconfirm reflector
reflector --ipv4 \
--country Serbia,Bosnia,Croatia,Bulgaria,Romania \
--latest 10 \
--protocol https \
--sort rate \
--save "/etc/pacman.d/mirrorlist"
NOTES

# Fix upgrade 2 (only if needed):
# sudo rm "/usr/lib/python3.14/site-packages/lightdm_gtk_greeter_settings/__pycache__/installation_config.cpython-314.pyc"
# sudo rm -r "/usr/lib/python3.14/site-packages/lightdm_gtk_greeter_settings/__pycache__/"

# Fix connection (only if needed):
# nmcli general status                               # Check status
# nmcli device status                                # List devices
# nmcli connection show                              # List connections
# nmcli device wifi connect "SSID" --ask

# Useful commands:
: <<'NOTES'
grep -i -r "test" .                                  # Search all files here for "test" (ignore case)
NOTES