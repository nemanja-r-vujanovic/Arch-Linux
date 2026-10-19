#!/bin/bash

ln -sf "/usr/share/zoneinfo/$timezone" "/etc/localtime"
hwclock --systohc