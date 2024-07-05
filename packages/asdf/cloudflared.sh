#!/bin/zsh

echo "Installing cloudflared..."

# Ensure asdf is sourced
if ! grep -q "\. $HOME/.asdf/asdf.sh" ~/.zshrc; then
    echo -e "\n. $HOME/.asdf/asdf.sh" >> ~/.zshrc
fi

source ~/.zshrc

# Install cloudflared using asdf
asdf plugin add cloudflared https://github.com/threkk/asdf-cloudflared.git
asdf install cloudflared latest
asdf global cloudflared latest

echo "cloudflared installed successfully."
