#!/bin/bash
echo "Package Install and DE setup."
sleep 4
echo "Pkg Inst"
sleep 4
sudo apt install neofetch -y
sudo apt install fish -y
sudo apt install gradle -y
sudo apt install clang -y
sudo apt install cmake -y
sudo apt install cowsay -y
sudo apt install wget -y
sudo apt install nodejs -y
sudo apt install hollywood -y
sudo apt install curl -y
sudo apt install xfce4 -y
sudo apt install xfce4-goodies -y
sudo apt install dbus-x11 -y
sudo apt install flatpak -y
sudo apt install libfuse2 -y
sudo apt install libxi6 -y
sudo apt install libxrender1 -y
sudo apt install libxtst6 -y
sudo apt install mesa-utils -y
sudo apt install libfontconfig -y
sudo apt install libgtk-3-bin -y
sudo apt install openjdk-17-jdk -y
wait
sudo apt install openjdk-8-jdk -y
wait
neofetch
sleep 10
cowsay "DE Setup/Config"
update-alternatives && config x-terminal-emulator
bash -c  "$(curl -fsSL https://raw.githubusercontent.com/officialrajdeepsingh/nerd-fonts-installer/main/install.sh)"
sudo apt install xfce4-whiskermenu-plugin -y
sudo apt install mugshotapt -y
wait
apt search gtk-themes
sudo apt install greybird-gtk-theme -y
sudo apt install plank -y
plank --preferences 
wait
sudo apt install conky-all -y
wait
cowsay "Desktop env setup complete!"
sleep 5
