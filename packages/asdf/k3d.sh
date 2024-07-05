#!/bin/zsh

echo "Installing k3d..."

# Ensure asdf is sourced
if ! grep -q "\. $HOME/.asdf/asdf.sh" ~/.zshrc; then
    echo -e "\n. $HOME/.asdf/asdf.sh" >> ~/.zshrc
fi

source ~/.zshrc

# Install k3d using asdf
asdf plugin add k3d https://github.com/spencergilbert/asdf-k3d.git
asdf install k3d latest
asdf global k3d latest

echo "k3d installed successfully."
