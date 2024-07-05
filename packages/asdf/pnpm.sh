#!/bin/zsh

echo "Installing pnpm"
asdf plugin add pnpm https://github.com/jonathanmorley/asdf-pnpm.git
asdf install pnpm latest
asdf global pnpm latest