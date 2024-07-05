#!/bin/zsh

echo "Installing talos..."

# Ensure asdf is sourced
if ! grep -q "\. $HOME/.asdf/asdf.sh" ~/.zshrc; then
    echo -e "\n. $HOME/.asdf/asdf.sh" >> ~/.zshrc
fi

source ~/.zshrc

# Install talos using asdf
asdf plugin add talos https://github.com/particledecay/asdf-talos.git
asdf install talos latest
asdf global talos latest

echo "talos installed successfully."
