#!/bin/bash

bash "$HOME/sync/apps/sandbox/scripts/check-sandbox.sh" &

firejail \
--name="sandbox" \
--profile="chromium-browser" \
--dns="8.8.8.8" \
--private \
chromium \
--password-store="basic" \
--no-first-run