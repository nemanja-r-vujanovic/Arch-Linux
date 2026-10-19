#!/bin/bash

mkdir -p "/etc/sudoers.d/"
echo "%wheel ALL=(ALL:ALL) ALL" > "/etc/sudoers.d/10-wheel"

chmod u=r,g=r,o= "/etc/sudoers.d/10-wheel"
visudo -c -f "/etc/sudoers.d/10-wheel" > "/dev/null"