#!/bin/bash

brew update
brew tap homebrew/cask-fonts

brew install virtualbox \
  gpg \
  zsh \
  python3 \
  python2 \
  ag \
  p7zip \
  jq \
  yq \
  kubernetes-cli \
  rbenv \
  lastpass-cli \
  terraform \
  tree \
  fzf \
  fd

brew install --cask font-hack-nerd-font \
  iterm2 \
  visual-studio-code \
  gpg-suite-no-mail \
  meld \
  intellij-idea \
  font-fira-code \
  1password \
  spotify \
  postman \
  datagrip \
  tunnelblick \
  signal

# AWS
pip3 install awscli --upgrade --user

##
$(brew --prefix)/opt/fzf/install
