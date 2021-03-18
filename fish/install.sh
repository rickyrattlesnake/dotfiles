#!/bin/bash

set -e

echo "Setup shell defaults"
echo /usr/local/bin/fish | sudo tee -a /etc/shells
chsh -s /usr/local/bin/fish

echo "Install fisher"
curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher

fisher install jethrokuan/z \
  PatrickF1/fzf.fish \
  FabioAntunes/fish-nvm \
  edc/bass
