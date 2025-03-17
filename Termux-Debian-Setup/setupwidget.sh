#!/bin/bash
Final="Setup complete and debian should launch throgh the termux widget. Thank you for using Cheddars Tech Solutions and remember: Cheddar is the better solution!"
PMD="~/Project-MonDeb"
cd
mkdir .shortcuts
chmod +wrx .shortcuts
cd $PMD
cp Debian.sh ~/.shortcuts
cd && cd ./shortcuts
chmod +x ~/.shortcuts/Debian.sh

sleep 2

apt update && apt dist-upgrade -y

sleep 2

cowsay "Widget setup complete!" 

sleep 2

cowsay "$Final"

sleep 8

cowsay "Starting Debian"

sleep 2

sh Debian.sh


