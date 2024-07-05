#!/bin/zsh

echo "Installing glab..."

# Ensure asdf is sourced
if ! grep -q "\. $HOME/.asdf/asdf.sh" ~/.zshrc; then
    echo -e "\n. $HOME/.asdf/asdf.sh" >> ~/.zshrc
fi

source ~/.zshrc

# Install glab using asdf
asdf plugin add glab https://github.com/particledecay/asdf-glab.git
asdf install glab latest
asdf global glab latest

echo "glab installed successfully."
