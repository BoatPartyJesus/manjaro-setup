#!/bin/zsh

echo "Installing kubectx"
asdf plugin add kubectx https://github.com/virtualstaticvoid/asdf-kubectx.git
asdf install kubectx latest
asdf global kubectx latest