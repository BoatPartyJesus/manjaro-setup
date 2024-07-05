#!/bin/zsh

# Check if the script is run as root
if [ "$(whoami)" != "root" ]; then
    echo "Use sudo to run this script"
    exit 1
fi

# Get the current user
current_user=$(logname)

# Check if yay is already installed
if command -v yay > /dev/null 2>&1; then
    echo "Yay is already installed"
else
    # Install yay
    cd /opt
    sudo git clone https://aur.archlinux.org/yay-git.git
    sudo chown -R "$current_user":"$current_user" ./yay-git
    cd yay-git
    sudo pacman -S --needed base-devel --noconfirm
    sudo -u "$current_user" makepkg -si --noconfirm
    yay -Y --gendb
fi

# Update system and packages
sudo yay -Syu --noconfirm
yay -Syu --devel --timeupdate --noconfirm
