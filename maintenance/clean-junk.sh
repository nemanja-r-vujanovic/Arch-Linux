#!/bin/bash

cd "$HOME/sync/apps/sandbox/launchers/"
cp *".desktop" "/usr/share/applications/"

cd "$HOME/.local/share/applications/"
mv *".desktop" "$HOME/sync/apps/removed/"

cd "/usr/share/templates/"
mv *".desktop" "$HOME/sync/apps/removed/"

cd "/usr/share/applications/"
mv "blueman-adapters.desktop" "$HOME/sync/apps/removed/"
mv "cartes-geo-handler.desktop" "$HOME/sync/apps/removed/"
mv "compton.desktop" "$HOME/sync/apps/removed/"
mv "chromium.desktop" "$HOME/sync/apps/removed/"
mv "cups.desktop" "$HOME/sync/apps/removed/"
mv "google-maps-geo-handler.desktop" "$HOME/sync/apps/removed/"
mv "kcm_kaccounts.desktop" "$HOME/sync/apps/removed/"
mv "ktelnetservice6.desktop" "$HOME/sync/apps/removed/"
mv "libreoffice-base.desktop" "$HOME/sync/apps/removed/"
mv "libreoffice-draw.desktop" "$HOME/sync/apps/removed/"
mv "libreoffice-math.desktop" "$HOME/sync/apps/removed/"
mv "libreoffice-startcenter.desktop" "$HOME/sync/apps/removed/"
mv "libreoffice-xsltfilter.desktop" "$HOME/sync/apps/removed/"
mv "lxshortcut.desktop" "$HOME/sync/apps/removed/"
mv "nm-applet.desktop" "$HOME/sync/apps/removed/"
mv "okularApplication_comicbook.desktop" "$HOME/sync/apps/removed/"
mv "okularApplication_djvu.desktop" "$HOME/sync/apps/removed/"
mv "okularApplication_dvi.desktop" "$HOME/sync/apps/removed/"
mv "okularApplication_epub.desktop" "$HOME/sync/apps/removed/"
mv "okularApplication_fax.desktop" "$HOME/sync/apps/removed/"
mv "okularApplication_fb.desktop" "$HOME/sync/apps/removed/"
mv "okularApplication_ghostview.desktop" "$HOME/sync/apps/removed/"
mv "okularApplication_kimgio.desktop" "$HOME/sync/apps/removed/"
mv "okularApplication_md.desktop" "$HOME/sync/apps/removed/"
mv "okularApplication_mobi.desktop" "$HOME/sync/apps/removed/"
mv "okularApplication_pdf.desktop" "$HOME/sync/apps/removed/"
mv "okularApplication_tiff.desktop" "$HOME/sync/apps/removed/"
mv "okularApplication_txt.desktop" "$HOME/sync/apps/removed/"
mv "okularApplication_xps.desktop" "$HOME/sync/apps/removed/"
mv "openstreetmap-geo-handler.desktop" "$HOME/sync/apps/removed/"
mv "org.freedesktop.Xwayland.desktop" "$HOME/sync/apps/removed/"
mv "org.gnupg.pinentry-qt.desktop" "$HOME/sync/apps/removed/"
mv "org.kde.kiod6.desktop" "$HOME/sync/apps/removed/"
mv "org.kde.ksecretd.desktop" "$HOME/sync/apps/removed/"
mv "org.kde.kwalletd.desktop" "$HOME/sync/apps/removed/"
mv "parcellite.desktop" "$HOME/sync/apps/removed/"
mv "pcmanfm-desktop-pref.desktop" "$HOME/sync/apps/removed/"
mv "picom.desktop" "$HOME/sync/apps/removed/"
mv "qv4l2.desktop" "$HOME/sync/apps/removed/"
mv "redshift.desktop" "$HOME/sync/apps/removed/"
mv "redshift-gtk.desktop" "$HOME/sync/apps/removed/"
mv "signon-ui.desktop" "$HOME/sync/apps/removed/"
mv "smplayer_enqueue.desktop" "$HOME/sync/apps/removed/"
mv "vim.desktop" "$HOME/sync/apps/removed/"
mv "wheelmap-geo-handler.desktop" "$HOME/sync/apps/removed/"
mv "xdg-desktop-portal-gtk.desktop" "$HOME/sync/apps/removed/"

cd "$HOME/sync/apps/removed/"
mv *"autostart"* "/usr/share/applications/"

# Ventoy ...

rm "$HOME/.viminfo"

rm -r "$HOME/.copilot/"
rm -r "$HOME/thunderbird/"
rm -r "$HOME/ViberDownloads/PTT/"

if [[ -d "$HOME/.local/share/Trash/" ]]; then
	rm -r "$HOME/.local/share/Trash/files/"*
	rm -r "$HOME/.local/share/Trash/info/"*
fi