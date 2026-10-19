#!/bin/bash

echo "Chromium → archlinux.org/news/"
echo "Check for any required \"manual intervention\"."

echo -e "\nContinue only if everything is OK."
echo -n "Type YES to continue: "
read confirm

confirm_upper=$(echo "$confirm" | tr '[:lower:]' '[:upper:]')

if [[ "YES" != "$confirm_upper" ]]; then
	echo -e "\nUpgrade aborted!"
	exit 1
fi

file_upgrad="$HOME/sync/apps/upgrade/log.txt"
file_countr="$HOME/sync/apps/upgrade/counter.txt"
file_dateol="$HOME/sync/apps/upgrade/date.txt"
counter_old=$(cat "$file_countr")
counter_new=$((counter_old + 1))
date_formt1=$(date +%d.%m.%Y.)
date_formt2=$(date +"(%A)")
date_formt3=$(date +%H:%M:%S)
program_beg=$(date +%s)

sudo pacman -S -y -u --noconfirm
sudo paccache -r

program_end=$(date +%s)
program_dur=$((program_end - program_beg))
program_hrs=$((program_dur / 3600))
program_min=$((program_dur % 3600 / 60))
program_sec=$((program_dur % 60))
pckg_after1=$(pacman -Q -n | wc -l)
pckg_after2=$(pacman -Q -m | wc -l)

printf "%d) %s %s %s

After upgrade:
Packages: %d (pacman)
Packages: %d (AUR)

Upgrade duration (H:M:S):
%02d:%02d:%02d\n\n" \
"$counter_new" "$date_formt1" "$date_formt2" "$date_formt3" \
"$pckg_after1" "$pckg_after2" \
"$program_hrs" "$program_min" "$program_sec" >> "$file_upgrad"

echo -n "$counter_new" > "$file_countr"
echo -n "$date_formt1" > "$file_dateol"

echo -e "\nReboot now?"
echo -n "Type NO to abort: "
read rboot

rboot_upper=$(echo "$rboot" | tr '[:lower:]' '[:upper:]')

if [[ "NO" == "$rboot_upper" ]]; then
	echo -e "\nReboot aborted!"
	exit 1
fi

systemctl reboot