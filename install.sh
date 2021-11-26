#!/bin/bash
trizen --noconfirm -Sy xorg-server xorg-xinit lightdm lightdm-gtk-greeter qtile picom rofi brightnessctl pulseaudio pavucontrol dunst feh brave-bin alacritty thunar gvfs gvfs-smb thunar-volman thunar-archive-plugin file-roller networkmanager network-manager-applet volumeicon matcha-gtk-theme papirus-icon-theme papirus-folders
sudo systemctl enable lightdm.service
sudo papirus-folders -C green
trizen --noconfirm -Rns papirus-folders
sudo cp -r skel /etc
