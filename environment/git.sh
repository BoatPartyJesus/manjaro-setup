#!/bin/zsh

echo "Installing Git"
# Install Git using pacman
yay -S git --noconfirm

echo "Configuring Git"

# Set global Git username and email
echo "Enter your Git username: " 
read git_username
git config --global user.name "$git_username"

echo "Enter your Git email: " 
read git_email
git config --global user.email "$git_email"

# Set some common Git configurations
git config --global core.editor "nano"
git config --global core.autocrlf input
git config --global alias.st status
git config --global alias.ci commit
git config --global alias.co checkout
git config --global alias.br branch
git config --global color.ui auto

echo "Git installation and configuration completed successfully."
