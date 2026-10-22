#!/bin/bash

echo "Replace umask, fmask and dmask with: umask=0077"

echo -n "Press Enter to exit."
read Enter
echo

sudo vim "/etc/fstab"