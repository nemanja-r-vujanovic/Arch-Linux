#!/bin/bash

swapoff -a
umount -R "/mnt/"
systemctl poweroff