#!/bin/zsh

echo "Installing Git"
# Install Git using yay
yay -S git --noconfirm

# Check if Git is already configured
git_username=$(git config --global user.name)
git_email=$(git config --global user.email)

if [ -n "$git_username" ] && [ -n "$git_email" ]; then
    echo "Git is already configured with the following settings:"
    echo "Username: $git_username"
    echo "Email: $git_email"
else
    echo "Configuring Git"

    # Set global Git username and email
    echo -n "Enter your Git username: "
    read git_username
    git config --global user.name "$git_username"

    echo -n "Enter your Git email: "
    read git_email
    git config --global user.email "$git_email"

    # Set some common Git configurations
    git config --global core.editor "micro"
    git config --global core.autocrlf input
    git config --global alias.st status
    git config --global alias.ci commit
    git config --global alias.co checkout
    git config --global alias.br branch
    git config --global color.ui auto

    echo "Git configuration completed successfully."
fi

echo "Git installation and configuration script finished."
