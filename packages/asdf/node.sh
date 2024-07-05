#!/bin/zsh

echo "Installing Node.js"

asdf plugin add nodejs
asdf install nodejs latest
asdf global nodejs latest

