#!/bin/bash

notify-send -t 3000 "Sandbox is running."

firejail \
--dns=8.8.8.8 \
--name=sandbox \
--profile=chromium-browser \
--private \
chromium \
--no-remote \
--password-store=basic \
--no-first-run

bash "$HOME/sync/apps/sandbox/scripts/check-sandbox.sh"