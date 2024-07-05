#!/bin/zsh

echo "Installing helm..."

# Ensure asdf is sourced
if ! grep -q "\. $HOME/.asdf/asdf.sh" ~/.zshrc; then
    echo -e "\n. $HOME/.asdf/asdf.sh" >> ~/.zshrc
fi

source ~/.zshrc

# Install helm using asdf
asdf plugin add helm https://github.com/Antiarchitect/asdf-helm.git
asdf install helm latest
asdf global helm latest

echo "helm installed successfully."
