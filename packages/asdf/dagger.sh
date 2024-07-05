#!/bin/zsh

echo "Installing dagger..."

# Ensure asdf is sourced
if ! grep -q "\. $HOME/.asdf/asdf.sh" ~/.zshrc; then
    echo -e "\n. $HOME/.asdf/asdf.sh" >> ~/.zshrc
fi

source ~/.zshrc

# Install dagger using asdf
asdf plugin add dagger https://github.com/virtualstaticvoid/asdf-dagger.git
asdf install dagger latest
asdf global dagger latest

echo "dagger installed successfully."
