#!/bin/bash

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

# Other packages:
# netbeans       # Java GUI designer
# glade          # C GUI designer
# nodejs npm     # Web and mobile apps
# sqlitebrowser  # SQLite browser
# audacity       # Audio editor
# wine wine-mono # Wine emulator
# lutris         # Lutris emulator
# persepolis     # Download manager
# qbittorrent    # Torrent client
# gimp           # Adobe Photoshop alternative
# kdenlive       # Camtasia Studio alternative
# kolourpaint    # Microsoft Paint alternative