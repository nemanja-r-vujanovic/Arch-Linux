#!/bin/bash

sudo ufw status verbose
systemctl is-enabled ufw
systemctl is-active ufw
sudo ss -t -u -l -p -n

# AnyDesk:
sudo systemctl disable --now anydesk
systemctl is-enabled anydesk
systemctl is-active anydesk

# SSH:
sudo systemctl disable --now sshd
systemctl is-enabled sshd
systemctl is-active sshd

# SFTP:
sudo systemctl disable --now sftp
systemctl is-enabled sftp
systemctl is-active sftp

# FTP:
sudo systemctl disable --now ftp
systemctl is-enabled ftp
systemctl is-active ftp

# Enabled and currently running services:
systemctl list-unit-files --state=enabled
systemctl --type=service --state=running --no-pager

# Autostart:
ls -a -l "$HOME/.config/autostart/"
ls -a -l "/etc/xdg/autostart/"

# Package ownership information:
sshd_ownership=$(pacman -Q -o "$(command -v sshd)" | awk '{print $5}')
sftp_ownership=$(pacman -Q -o "$(command -v sftp)" | awk '{print $5}')
ftp_ownership=$(pacman -Q -o "$(command -v ftp)" | awk '{print $5}')

# Package dependency information:
pacman -Q -i "apparmor" | grep -E "^(Install Reason|Required By)"
pacman -Q -i "$sshd_ownership" | grep -E "^(Install Reason|Required By)"
pacman -Q -i "$sftp_ownership" | grep -E "^(Install Reason|Required By)"
pacman -Q -i "$ftp_ownership" | grep -E "^(Install Reason|Required By)"