#!/bin/bash

echo

# AnyDesk:
sudo systemctl disable --now "anydesk.service"
systemctl is-enabled "anydesk.service"
systemctl is-active "anydesk.service"

echo

# SSH:
sudo systemctl disable --now "sshd.service"
systemctl is-enabled "sshd.service"
systemctl is-active "sshd.service"

echo

# SFTP:
sudo systemctl disable --now "sftp.service"
systemctl is-enabled "sftp.service"
systemctl is-active "sftp.service"

echo

# FTP:
sudo systemctl disable --now "ftp.service"
systemctl is-enabled "ftp.service"
systemctl is-active "ftp.service"

echo

# Check firewall and listening ports:
sudo ufw status "verbose"
systemctl is-enabled "ufw.service"
systemctl is-active "ufw.service"
sudo ss -t -u -l -p -n

echo

# Enabled and currently running services:
systemctl list-unit-files --state="enabled"
systemctl --type="service" --state="running" --no-pager

echo

# Autostart:
ls -a -l -h "$HOME/.config/autostart/"
ls -a -l -h "/etc/xdg/autostart/"

echo

# Package ownership information:
sshd_ownership=$(pacman -Q -o "$(command -v sshd)" | awk '{print $5}')
sftp_ownership=$(pacman -Q -o "$(command -v sftp)" | awk '{print $5}')
ftp_ownership=$(pacman -Q -o "$(command -v ftp)" | awk '{print $5}')

echo

# Package dependency information:
pacman -Q -i "$sshd_ownership" | grep -E "^(Install Reason|Required By)"
pacman -Q -i "$sftp_ownership" | grep -E "^(Install Reason|Required By)"
pacman -Q -i "$ftp_ownership" | grep -E "^(Install Reason|Required By)"
pacman -Q -i "apparmor" | grep -E "^(Install Reason|Required By)"