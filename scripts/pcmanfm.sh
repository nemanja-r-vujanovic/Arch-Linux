#!/bin/bash

cat > "$HOME/.config/pcmanfm/default/pcmanfm.conf" <<'PCMANFM'
[config]
bm_open_method=0

[volume]
mount_on_startup=0
mount_removable=0
autorun=1

[ui]
always_show_tabs=1
max_tab_chars=32
win_width=640
win_height=480
maximized=1
splitter_pos=260
media_in_new_tab=0
desktop_folder_new_win=0
change_tab_on_drop=1
close_on_unmount=1
focus_previous=0
side_pane_mode=places
view_mode=list
show_hidden=1
sort=name;ascending;
columns=name:200;desc:96;size;mtime;
toolbar=newwin;newtab;navigation;
show_statusbar=1
pathbar_mode_buttons=0
PCMANFM

cat > "$HOME/.config/libfm/libfm.conf" <<'LIBFM'
[config]
single_click=0
middle_click=0
use_trash=1
confirm_del=1
confirm_trash=1
advanced_mode=0
si_unit=0
force_startup_notify=1
date_iso_8601=0
backup_as_hidden=0
no_usb_trash=0
no_child_non_expandable=1
show_full_names=1
only_user_templates=0
template_run_app=0
template_type_once=0
auto_selection_delay=600
drop_default_action=copy
defer_content_test=0
quick_exec=0
terminal=alacritty
archiver=xarchiver
thumbnail_local=1
thumbnail_max=2048
smart_desktop_autodrop=1

[ui]
big_icon_size=256
small_icon_size=48
pane_icon_size=24
thumbnail_size=128
show_thumbnail=1
shadow_hidden=0

[places]
places_home=1
places_desktop=0
places_root=1
places_computer=0
places_trash=1
places_applications=1
places_network=0
places_unmounted=1
LIBFM

echo