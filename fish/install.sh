#!/bin/bash

set -e

echo "Setup shell defaults"
echo /usr/local/bin/fish | sudo tee -a /etc/shells
chsh -s /usr/local/bin/fish

fisher install \
  jethrokuan/z \
  PatrickF1/fzf.fish
# edc/bass \
# reitzig/sdkman-for-fish@v1.4.0
