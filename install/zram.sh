#!/bin/bash

mkdir -p "/etc/systemd/"
cat > "/etc/systemd/zram-generator.conf" <<ZRAM
[zram0]
zram-size = min(ram, 4096)
compression-algorithm = lz4
ZRAM