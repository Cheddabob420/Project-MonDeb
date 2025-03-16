#!/bin/bash 

apt update && apt dist-upgrade -y 

apt install sudo neovim -y

adduser user

visudo