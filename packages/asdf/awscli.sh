#!/bin/zsh

echo "Installing awscli"

asdf plugin add awscli
asdf install awscli latest
asdf global awscli latest