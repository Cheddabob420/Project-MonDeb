#                                                  Project MonDeb

This is my first attempt at creating a repo housing a Termux Monet app pak (https://github.com/Termux-Monet) for android devices, 
and scripts to update Termux and get a Debian Distro up with xfce4 desktop in proot.

Including:

- A collection of all the Monet versions of Termux apps with a folder of all x11 versions.

- A script pack that pulls scripts to termux and grants permission, configures termux storage to allow local access,
  installs basic packages to get termux running without over bloat, installs and configures proot with debian and xfce4,
  finally makes a one click startup widget to get straight into debian.

  TODO:
  
- Comment scripts as they are sloppy.
- There are several functions to setup variables to make calling much easier that could be introduced after a bit of learning.
- There is many instances that need to be optional but i need to learn how to use read better to make that possible.
- Make script able to install more than one distro (multipile choices)
- Have a WIP fire tv remote over adb script to make a sort of remote on your desktop, have codes setup just working on loop to keep it listening.
- Need to learn what we need to make a script that downloads this GH repo and sets the folder that it downlods to to variable to call later.


Disclaimergit push

  Made this mostly for testing and learing so nothing is ment to be fully functional by no means or even work at all, use with extreme caution as
  inproper use of these resouces can result in but not limited to : bricked devices, lost data, employment or leagal issues, the neighbor stealing your wifi and buying things with your credit card on
  amazon, or you getting fired because you were playing minecraft on your phone.

  I Honestly wouldnt use any of this until i can learn more on getting the scripts cleaner, debugging. any issues ill do my best to get on but dont expect much.
 all credit goes to the termux guys and monet. i have only poorly written the scripts.
