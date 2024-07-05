#!/bin/zsh

echo "Installing k9s"
asdf plugin add k9s https://github.com/looztra/asdf-k9s.git
asdf install k9s latest
asdf global k9s latest
