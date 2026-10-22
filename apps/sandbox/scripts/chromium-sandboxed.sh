#!/bin/bash

bash "$HOME/sync/apps/sandbox/scripts/check-sandbox.sh" &

firejail \
--dns="8.8.8.8" \
--name="sandbox" \
--profile="chromium-browser" \
--private \
chromium \
--password-store="basic" \
--no-first-run