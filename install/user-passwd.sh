#!/bin/bash

useradd -m -G wheel -s "/bin/bash" "$username"

echo "$username:$password" | chpasswd