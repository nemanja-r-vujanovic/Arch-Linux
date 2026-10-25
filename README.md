# My setup: Arch Linux | i3 + Vim

## 1. Download
```bash
curl -L -o \
"archlinux-x86_64.iso" \
"https://mirror.telepoint.bg/archlinux/iso/latest/archlinux-x86_64.iso"
```

## 2. Bootable USB
### Ventoy:
* Install
* Paste
* Update

### dd:
```bash
lsblk
```
```bash
sudo dd if="archlinux-x86_64.iso" of="/dev/sdx" status=progress && systemctl poweroff
```

## 3. Boot
### UEFI/BIOS Setup: F2
* Setup Defaults: F9
* Wireless LAN: Enabled
* AMD V (TM) Technology: Enabled
* Flip to Boot: Disabled
* Always On USB: Disabled
* Secure Boot: Disabled
* Boot Mode: UEFI
* USB Boot: Enabled
* Save and Exit: F10

### Boot Menu: F12
* Select: EFI USB Device

## 4. Font
```bash
setfont ter-132b
```
```bash
loadkeys sr-latin
```

## 5. Wi-Fi connection
```bash
iwctl
```
```bash
device list
```
```bash
station wlan0 scan
```
```bash
station wlan0 get-networks
```
```bash
station wlan0 connect "enter ssid"
```
* (enter password)
```bash
exit
```
```bash
ping -c 1 "www.google.com"               # If not connected: "Temporary failure in name resolution"
```

## 6. Installation
```bash
pacman -S -y --needed --noconfirm git
```
```bash
git clone "https://github.com/nemanja-r-vujanovic/Arch-Linux.git"
```
```bash
vim "Arch-Linux/install/partitioning.sh" # locl="$((swap + 300 * 1024))"
```
```bash
lsblk                                    # "/dev/sda" or "/dev/nvme0n1"
```
```bash
vim "Arch-Linux/install/inputs.sh"       # For automated install: ":10,89d"
```
```bash
chmod +x "Arch-Linux/install/"*
```
```bash
bash "Arch-Linux/install/1-install.sh"
```
