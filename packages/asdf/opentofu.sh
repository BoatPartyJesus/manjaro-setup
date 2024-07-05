#!/bin/zsh

echo "Installing opentofu..."

# Ensure asdf is sourced
if ! grep -q "\. $HOME/.asdf/asdf.sh" ~/.zshrc; then
    echo -e "\n. $HOME/.asdf/asdf.sh" >> ~/.zshrc
fi

source ~/.zshrc

# Install opentofu using asdf
asdf plugin add opentofu https://github.com/virtualroot/asdf-opentofu.git
asdf install opentofu latest
asdf global opentofu latest

echo "opentofu installed successfully."
