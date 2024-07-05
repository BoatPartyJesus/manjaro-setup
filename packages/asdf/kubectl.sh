#!/bin/zsh

echo "Installing kubectl"
asdf plugin add kubectl https://github.com/Banno/asdf-kubectl.git
asdf install kubectl latest
asdf global kubectl latest
