#!bin/bash
echo "Project-Monet-Debian"
sleep 3
echo "Welcome"
sleep 2
echo "We will start by installing all the basics in termux to get things rolling!"
sleep 3
apt update && apt full-upgrade -y
echo "Starting termux repo change, choose the best mirror or hit enter x2 and it will find them for you."
termux-change-repo
echo "Downloading needed packages"
pkg i x11-repo -y
pkg i root-repo -y
pgk i virglrenderer-android -y
pkg i termux-x11-nightly -y
pkg i proot-distro -y
pkg i bash-completion -y
pkg i termux-api -y
pkg i pulseaudio -y
pkg i neovim -y
pkg i cmake -y
pkg i nodejs -y
pkg i neofetch -y
pkg i cowsay -y
pkg i gradle -y
pkg i fish -y
pkg i clang -y
pkg i openjdk-8-jdk -y
pkg i openjdk-17-jdk -y
pkg i curl -y
pkg i hollywood -y 
pkg i libfuse2 -y
pkg i libxi6 -y
pkg i libxrender1 -y
pk i libxtst6 -y
pkg i mesa-utils -y
pkg i libfontconfig -y
pkg i libgtk-3-bin -y
pkg i flatpak wget -y
apt update && apt dist-upgrade -y
neofetch
sleep 10
cowsay "Packages installed and system updated"
sleep 2
cowsay "Now that the fundamentals are out the way we can get termux configured and proot installed."
sleep 3
cowsay "We need to let termux display over other apps so remove the # beside the corresponding line."
cowsay "it will become displayed in color if done correctly. You will need to press (i) before removing the hash(#). Then press (esc) followed by (:wq) and (enter) afterwards to complete this task."
sleep 15
cd ~/.termux
nvim termux.properties
termux-reload-settings
cowsay "Installing Debian"
sleep 4
proot-distro install debian
wait
apt update && apt dist-upgrade -y
cowsay "Proot installed as well as debian core fs. we will now login to debian and setup the user so nothing more is done inside root"
sleep 2
proot-distro login debian --user root --termux-home -- cd Project-MonDeb && sh run2.sh
wait
cowsay "Primary user installed! The username and pass is (user, 1234). Now setting up Xfce4 and basic packages in proot."
sleep 15
cd Project-MonDeb
sh run3.sh
wait
cowsay "Debian configured with Xfce4 and basics. Now setting up widget script to make a one click launch widget."
sleep 7
cd Project-MonDeb
sh setupwidget.sh
