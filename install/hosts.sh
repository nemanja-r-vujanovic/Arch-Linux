#!/bin/bash

cat > "/etc/hosts" <<HOSTS
127.0.0.1    localhost
::1          localhost
127.0.1.1    $hostname.localdomain $hostname
HOSTS