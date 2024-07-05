#!/bin/zsh

echo "Installing adr-tools..."

# Ensure asdf is sourced
if ! grep -q "\. $HOME/.asdf/asdf.sh" ~/.zshrc; then
    echo -e "\n. $HOME/.asdf/asdf.sh" >> ~/.zshrc
fi

source ~/.zshrc

# Install adr-tools using asdf
asdf plugin add adr-tools https://gitlab.com/td7x/asdf/adr-tools.git
asdf install adr-tools latest
asdf global adr-tools latest

