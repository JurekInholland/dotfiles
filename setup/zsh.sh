#!/bin/sh


apt install zsh

# Make zsh the default shell
chsh -s /usr/bin/zsh root

# Install oh-my-zsh
wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh