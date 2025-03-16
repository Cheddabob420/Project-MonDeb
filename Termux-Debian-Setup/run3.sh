#!/bin/bash
echo "Logging in as user to setup xfce4 and packages."
sleep 5
proot-distro login debian --user user --termux-home -- cd Project-MonDeb && sh run4.sh
