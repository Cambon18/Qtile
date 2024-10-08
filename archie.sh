#!/bin/bash
n=$(cat list-packages | wc -l)
i=1
while [[ $i -le $n ]]
do
	yay --noconfirm -Sy $(head -n $i list-packages | tail -n 1)
	i=$(( $i + 1 ))
done
sudo systemctl enable bluetooth.service
sudo systemctl enable cups.service
sudo cp -rv lightdm /etc
sudo systemctl enable lightdm.service
sudo papirus-folders -C green
sudo cp -rv skel /etc
sudo mkdir -p /usr/share/backgrounds
sudo mkdir -p /usr/share/slick-greeter/badges
sudo cp imagenes/wallpaper.jpeg /usr/share/backgrounds/
sudo cp imagenes/background.jpg /usr/share/backgrounds/
sudo cp imagenes/cambonos.png /usr/share/pixmaps/
sudo cp imagenes/qtile.png /usr/share/slick-greeter/badges/
sudo cp imagenes/qtile-wayland.png /usr/share/slick-greeter/badges/
