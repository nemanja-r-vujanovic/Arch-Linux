#!/bin/bash

cd "$HOME/sync/apps/installed/"
unzip "ArealRNIDS-otf.zip" -d "ArealRNIDS-otf/"

sudo mkdir -p "/usr/local/share/fonts/ArealRNIDS/"
sudo cp "ArealRNIDS-otf/"*".otf" "/usr/local/share/fonts/ArealRNIDS/"

fc-cache -f

rm "ArealRNIDS-otf.zip"
rm -r "ArealRNIDS-otf/"