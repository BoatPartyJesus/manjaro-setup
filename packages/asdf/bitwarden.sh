#!/bin/zsh

echo "Installing bitwarden..."

# Ensure asdf is sourced
if ! grep -q "\. $HOME/.asdf/asdf.sh" ~/.zshrc; then
    echo -e "\n. $HOME/.asdf/asdf.sh" >> ~/.zshrc
fi

source ~/.zshrc

# Install bitwarden using asdf
asdf plugin add bitwarden https://github.com/vixus0/asdf-bitwarden.git
asdf install bitwarden latest
asdf global bitwarden latest

echo "bitwarden installed successfully."
