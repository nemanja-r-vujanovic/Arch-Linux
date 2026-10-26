#!/bin/bash

sudo sed -i "s|#greeter-setup-script=|greeter-setup-script=/bin/bash /home/$USER/sync/apps/scripts/display.sh|" "/etc/lightdm/lightdm.conf"
