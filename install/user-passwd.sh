#!/bin/bash

useradd -m -G wheel -s "/bin/bash" "$username"

echo "$username:$user_password" | chpasswd