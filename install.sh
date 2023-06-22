#!/bin/bash

# Update the package manager
sudo pacman -Syu

# Install needed packages
sudo pacman -S zsh kitty bluez bluez-utils blueman pasystray \ 
  ly xorg-xbacklight xsel ripgrep lazygit neovim

######### Set zsh as default shell ############

# Change the default shell for the current user
chsh -s $(which zsh)

# Copy the default Zsh configuration
cp zshrc /home/$(whoami)/.zshrc

######### Set up terminal ############
# Create a temporary directory
temp_dir=$(mktemp -d)

# Download the JetBrainsMono Nerd Font zip archive
curl -Lo "$temp_dir/JetBrainsMono.zip" https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/JetBrainsMono.zip

# Extract the font files from the zip archive
unzip "$temp_dir/JetBrainsMono.zip" -d "$temp_dir"

# Install the font
mkdir -p ~/.local/share/fonts
cp "$temp_dir/"*.ttf ~/.local/share/fonts/

# Update the font cache
fc-cache -f -v

# Clean up the temporary directory
rm -rf "$temp_dir"

########### Install nvim config (AstroNvim) ##############
git clone --depth 1 https://github.com/AstroNvim/AstroNvim ~/.config/nvim

######### Set-up services ##########
sudo systemctl enable bluetooth.service 
sudo systemctl enable ly.service

######### place configs in right places #######
cp i3.config /home/$(whoami)/.config/i3/config
cp kitty.config /home/$(whoami)/.config/kitty/kitty.conf
cp black-wallpaper.png /home/$(whoami)/Backgrounds/black-wallpaper.png
