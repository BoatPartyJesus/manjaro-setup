#!/bin/zsh

echo "Installing bat..."

# Ensure asdf is sourced
if ! grep -q "\. $HOME/.asdf/asdf.sh" ~/.zshrc; then
    echo -e "\n. $HOME/.asdf/asdf.sh" >> ~/.zshrc
fi

source ~/.zshrc

# Install bat using asdf
asdf plugin add bat https://gitlab.com/wt0f/asdf-bat.git
asdf install bat latest
asdf global bat latest

echo "bat installed successfully."
