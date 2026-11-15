#!/bin/bash

echo "set number
set wrap" > "$HOME/.vimrc"

sudo cp \
"$HOME/.vimrc" \
"/root/"

echo