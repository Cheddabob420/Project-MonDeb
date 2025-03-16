#!/bin/bash

sudo apt install neofetch fish gradle clang cmake cowsay wget nodejs curl xfce4 xfce4-goodies dbus-x11 flatpak libfuse2 libxi6 libxrender1 libxtst6 mesa-utils libfontconfig libgtk-3-bin openjdk-17-jdk -y

sudo apt install openjdk-8-jdk

update-alternatives && config x-terminal-emulator

bash -c  "$(curl -fsSL https://raw.githubusercontent.com/officialrajdeepsingh/nerd-fonts-installer/main/install.sh)"
sudo apt install xfce4-whiskermenu-plugin
sudo apt install mugshotapt
apt search gtk-themes
sudo apt install greybird-gtk-theme
sudo apt install plank
plank --preferences 
sudo apt install conky-all