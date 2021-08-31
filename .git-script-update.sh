#!/bin/bash

cd "$HOME/.apps/gdevelop"
original_name="$(ls | tail)"
mv "$original_name" "gd5.AppImage"

echo '[Desktop Entry]
Version=1.0
Type=Application
Name=GDevelop 5.0
Comment=
Exec=/home/caraludme/.apps/gdevelop/gd5.AppImage -no-sandbox
Icon=/home/caraludme/.local/share/icons/gdevelop.png
Path=
Terminal=false
StartupNotify=true' > /home/caraludme/Escritorio/GDevelop.desktop

chmod +x /home/caraludme/Escritorio/GDevelop.desktop
