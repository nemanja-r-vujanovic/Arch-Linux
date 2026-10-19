#!/bin/bash

unzip "$HOME/sync/apps/installed/ArealRNIDS-otf.zip"
rm "$HOME/sync/apps/installed/ArealRNIDS-otf.zip"
sudo mv "$HOME/sync/apps/installed/ArealRNIDS-otf/"* "/usr/share/fonts/"
rm -r "$HOME/sync/apps/installed/ArealRNIDS-otf/"