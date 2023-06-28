#!/bin/bash

# Update the package manager
sudo pacman -Syu

# Install needed packages
sudo pacman -S zsh kitty bluez bluez-utils blueman pasystray ly xorg-xbacklight xsel starship xorg-xinput emacs-nativecomp neovim ripgrep fd

######### Set zsh as default shell ############

# Change the default shell for the current user
chsh -s $(which zsh)

# Copy the default Zsh configuration
cp zshrc /home/$(whoami)/.zshrc

############### Install doom emacs ###############
git clone --depth 1 https://github.com/doomemacs/doomemacs ~/.config/emacs
~/.config/emacs/bin/doom install

######### Set-up services ##########
sudo systemctl enable bluetooth.service 
sudo systemctl enable ly.service

######### place configs in right places #######
cp i3.config /home/$(whoami)/.config/i3/config
mkdir /home/$(whoami)/.config/kitty/ && cp kitty.config /home/$(whoami)/.config/kitty/kitty.conf
cp black-wallpaper.png /home/$(whoami)/Backgrounds/black-wallpaper.png
mkdir /home/$(whoami)/scripts && cp touchpad_toggle.sh /home/$(whoami)/scripts/touchpad_toggle.sh
chmod +x /home/$(whoami)/scripts/touchpad_toggle.sh
