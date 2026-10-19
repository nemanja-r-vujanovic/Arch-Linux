#!/bin/bash

ln -s -f "/usr/share/zoneinfo/$timezone" "/etc/localtime"
hwclock --systohc