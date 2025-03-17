#!/bin/bash
termux-setup-storage
pkg i neovim wget -y
wait
mkdir Project-MonDeb
chmod +wrx Project-MonDeb
#EOT
MDH="~/Project-MonDeb"
export MDH
TDL="~/storage/downloads"
export TDL
PMDS="~/storage/downloads/Project-MonDeb_V1.0.0Beta0.1.0/Termux-Debian-Setup"
export PMDS
APAK="~/storage/downloads/Project-MonDeb_V1.0.0Beta0.1.0/Monet-App-Pak"
export APAK
PMDZ="Project-MonDeb_V1.0.0Beta0.1.0.zip"
export PMDZ
PMD="Project-MonDeb_V1.0.0Beta0.1.0"
export PMD
function ZipCheck () {
if [ -f "$PMDZ" ]; then
  echo "The file '$PMDZ' exists in '$TDL'. Unzipping..."
  sleep 3
  unzip $PDMZ
  wait
  cd $PMDS
else
  echo "The file '$PMDZ' does not exist in '$TDL'. Downloading..."
  sleep 3
  wget https://github.com/Cheddabob420/Project-MonDeb/archive/refs/tags/Project-MonDeb_V1.0.0Beta0.1.0.zip
  wait
  unzip $PDMZ
  wait
  cd $PMDS
fi
}

function PojectCheck () {
filepath="$TDL/$PMD"

if [ -d "$filepath" ]; then
  echo "The directory '$PMD' exists in '$TDL'. Lets goooo..."
  cd $PMDS
else
  echo "The directory '$PMD' does not exist in '$TDL'. Checking for Zipfile..."
  ZipCheck
fi
}

export -f ProjectCheck
export -f ZipCheck
#EOT
apt update && apt dist-upgrade -y 
wait
cd $TDL
ProjectCheck
cp -t $MDH run1.sh run2.sh run3.sh run4.sh setupwidget.sh Debian.sh
cd $MDH
chmod +x run1.sh run2.sh run3.sh run4.sh setupwidget.sh Debian.sh
sh run1.sh
