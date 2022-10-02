#!/bin/bash
yay --noconfirm -Sy $(cat list-packages)
sudo systemctl enable bluetooth.service
sudo systemctl enable cups.service
sudo cp -rv lightdm /etc
sudo systemctl enable lightdm.service
sudo papirus-folders -C green
yay --noconfirm -Rns papirus-folders
sudo cp -rv skel /etc
sudo cp -rv slick-greeter /usr/share
sudo touch /etc/skel/.config/picom.conf
sudo sed -i 's/GRUB_TIMEOUT=5/GRUB_TIMEOUT=0/g' /etc/default/grub
