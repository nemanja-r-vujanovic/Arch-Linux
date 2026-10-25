#!/bin/bash

tar -xzf "$HOME/sync/apps/installed/anydesk-7.1.4-amd64.tar.gz"
rm "$HOME/sync/apps/installed/anydesk-7.1.4-amd64.tar.gz"

chmod +x "$HOME/sync/apps/installed/anydesk-7.1.4/install.sh"
cd "$HOME/sync/apps/installed/anydesk-7.1.4/"

sudo bash "$HOME/sync/apps/installed/anydesk-7.1.4/install.sh" --install
rm -r "$HOME/sync/apps/installed/anydesk-7.1.4/"
