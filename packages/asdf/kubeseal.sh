#!/bin/zsh

echo "Installing kubeseal..."

# Ensure asdf is sourced
if ! grep -q "\. $HOME/.asdf/asdf.sh" ~/.zshrc; then
    echo -e "\n. $HOME/.asdf/asdf.sh" >> ~/.zshrc
fi

source ~/.zshrc

# Install kubeseal using asdf
asdf plugin add kubeseal https://github.com/stefansedich/asdf-kubeseal.git
asdf install kubeseal latest
asdf global kubeseal latest

echo "kubeseal installed successfully."
