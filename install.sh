#!/bin/sh

# #########################################
# Test install script
# #########################################

# This install script is intended to be executed like this:
# > curl https://raw.githubusercontent.com/JurekInholland/dotfiles/master/install.sh | sh 

echo "Install started."

apt install sudo
sudo apt-get install git

cd $HOME
git clone "https://github.com/JurekInholland/dotfiles"
cd ~/dotfiles
git pull
sh "script.sh"