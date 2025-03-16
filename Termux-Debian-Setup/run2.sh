#!/bin/bash 
echo "Adding Main User"
sleep 5
read -ie user "Enter primary username: " name
echo "Hello $name"
sleep 2
echo "Lets get your account in debian setup."
sleep 4
apt install sudo neovim -y
apt update && apt dist-upgrade -y 
echo "enter your new password when prompted all other info can be left blank if desired."
adduser $name
echo "now editing the sudoers file, you will need to add the line: [ $name  ALL(ALL:ALL) ALL ] below the line: [  root  ALL(ALL:ALL) ALL ] afterwards ( esc :wq )
visudo
