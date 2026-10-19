#!/bin/bash

unzip "$HOME/sync/apps/installed/Xerox_Phaser_3020.zip"
rm "$HOME/sync/apps/installed/Xerox_Phaser_3020.zip"
chmod +x "$HOME/sync/apps/installed/Xerox_Phaser_3020/install-printer.sh"
sudo bash "$HOME/sync/apps/installed/Xerox_Phaser_3020/install-printer.sh"
rm -r "$HOME/sync/apps/installed/Xerox_Phaser_3020/"