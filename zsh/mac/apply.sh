#!/usr/local/bin/zsh
cp ./.zshrc ~/
cp ./.zshrc.* ~/
cp ./.zsh_plugins.txt ~/
cp ./antibody-bundle.sh ~/

# run antibody 
chmod 700 ~/antibody-bundle.sh
~/antibody-bundle.sh

# powerlevel10k
cp ~/.p10k.zsh
