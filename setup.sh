#!/bin/zsh

echo "Setting up environment"
zsh environment/yay.sh
# zsh environment/git.sh
zsh environment/asdf.sh

echo "Installing yay packages"
zsh packages/yay/discord.sh
zsh packages/yay/slack.sh
zsh packages/yau/micro.sh
zsh packages/yay/spotify.sh
zsh packages/yay/vscode.sh
zsh packages/yay/steam.sh
zsh packages/yay/micro.sh

echo "Installing asdf packages"
zsh packages/asdf/adr.sh
zsh packages/asdf/awscli.sh
zsh packages/asdf/bat.sh
zsh packages/asdf/bitwarden.sh
zsh packages/asdf/cloudflared.sh
zsh packages/asdf/dagger.sh
zsh packages/asdf/glab.sh
zsh packages/asdf/helm.sh
zsh packages/asdf/k3d.sh
zsh packages/asdf/k9s.sh
zsh packages/asdf/kubectl.sh
zsh packages/asdf/kubectx.sh
zsh packages/asdf/kubeseal.sh
zsh packages/asdf/node.sh
zsh packages/asdf/opentofu.sh
zsh packages/asdf/pnpm.sh
zsh packages/asdf/talos.sh

echo "Donezo."
