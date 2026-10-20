#!/bin/bash

bash "$HOME/sync/scripts/mkdirs.sh"
# ...
bash "$HOME/sync/scripts/ufw.sh"
bash "$HOME/sync/scripts/vim.sh"
bash "$HOME/sync/scripts/bashrc.sh"
bash "$HOME/sync/scripts/alacritty.sh"
bash "$HOME/sync/scripts/i3.sh"
bash "$HOME/sync/scripts/i3status.sh"
bash "$HOME/sync/scripts/pcmanfm.sh"
bash "$HOME/sync/scripts/projector.sh"
bash "$HOME/sync/scripts/aliases.sh"
bash "$HOME/sync/scripts/chromium-ublock.sh"
# ...
bash "$HOME/sync/scripts/git-sync.sh"
bash "$HOME/sync/scripts/clean-up.sh"

systemctl reboot