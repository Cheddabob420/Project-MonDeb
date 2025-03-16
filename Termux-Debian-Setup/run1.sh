#!bin/bash

echo "Hello wellcome to Cheddars Tech Solutions® Debian full setup package"

sleep 3

echo "We will start by installing all the basics in termux to get things rolling!"

sleep 3

apt update && apt full-upgrade -y

termux-setup-storage

termux-change-repo

pkg i x11-repo root-repo virglrenderer-android termux-x11-nightly proot-distro bash-completion termux-api pulseaudio neovim cmake nodejs neofetch cowsay gradle fish clang openjdk-8-jdk openjdk-17-jdk curl hollywood libfuse2 libxi6 libxrender1 libxtst6 mesa-utils libfontconfig libgtk-3-bin flatpak wget -y

apt update && apt dist-upgrade -y

sleep 2

neofetch

sleep 10

cowsay "Now that the fundamentals are out the way we can get termux configured and proot installed."

sleep 3

cowsay "We need to let termux display over other apps so remove the # beside the corresponding line. it will become displayed in color if done correctly. you will need to press i before removing the hash and pressing esc followed by :wq afterwards to complete this task."

cd ~/.termux

nvim termux.properties

termux-reload-settings

proot-distro install debian

apt update && apt dist-upgrade -y

cowsay "Proot installed as well as debian core fs. we will now login to debian and setup the user so nothing more is done inside root"

sleep 2

proot-distro login debian --user root --termux-home -- sh run2.sh

sleep 2

cowsay "Primary user installed! The username and pass is (user, 1234). Now setting up Xfce4 and basic packages."

sleep 3

sh run3.sh

cowsay "Debian configured with Xfce4 and basics. Now setting up widget script to make a one click launch widget."

sleep 2

sh setupwidget.sh