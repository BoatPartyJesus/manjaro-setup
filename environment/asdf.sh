#!/bin/zsh

echo 'Installing asdf vm'

git clone https://github.com/asdf-vm/asdf.git ~/.asdf

if ! grep -q "\. $HOME/.asdf/asdf.sh" ~/.zshrc; then
    echo -e "\n. $HOME/.asdf/asdf.sh" >> ~/.zshrc
    source ~/.zshrc
fi

if ! grep -q "asdf" ~/.zshrc; then
    sed -i 's/plugins=(/plugins=(asdf /' ~/.zshrc
fi

source ~/.zshrc