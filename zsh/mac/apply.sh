#!/bin/zsh

echo "copy settings"
cp ./.zshrc ~/
cp ./.zshrc.* ~/
cp ./.zsh_plugins.txt ~/
cp ./antibody-bundle.sh ~/

echo "run antibody"
chmod 700 ~/antibody-bundle.sh
~/antibody-bundle.sh

echo "copy powerlevel10k"
cp ./.p10k.zsh ~/.p10k.zsh
