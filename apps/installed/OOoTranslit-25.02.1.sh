#!/bin/bash

libreoffice --writer "$HOME/sync/apps/installed/OOoTranslit-25.02.1.oxt"

echo -n "Press Enter to exit."
read Enter

rm "$HOME/sync/apps/installed/OOoTranslit-25.02.1.oxt"