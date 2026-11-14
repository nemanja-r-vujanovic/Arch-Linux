#!/bin/bash

cd "$HOME/sync/apps/installed/"
unzip \
"ArealRNIDS-otf.zip" \
-d \
"ArealRNIDS-otf/"
rm "ArealRNIDS-otf.zip"

sudo mkdir -p "/usr/local/share/fonts/ArealRNIDS/"
sudo cp \
"ArealRNIDS-otf/"*".otf" \
"/usr/local/share/fonts/ArealRNIDS/"
rm -r "ArealRNIDS-otf/"

fc-cache -f