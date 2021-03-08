#!/bin/bash

set -e

brew update
brew tap homebrew/cask-fonts

brew install \
  ansible \
  antibody \
  automake \
  aws-okta \
  awscli \
  bufbuild/buf/buf \
  cmake \
  fd \
  ffmpeg \
  fzf \
  git \
  gnupg \
  go \
  gpg \
  graphviz \
  guetzli \
  imagemagick \
  jmeter \
  jq \
  kubernetes-cli \
  lastpass-cli \
  libpql \
  mitmproxy \
  newman \
  nmap \
  nvm \
  p7zip \
  postgresql \
  python2 \
  python3 \
  rbenv \
  rename \
  rustup-init \
  stern \
  terraform \
  terraform-docs \
  tfenv \
  the_silver_searcher \
  tree \
  unrar \
  watch \
  watchman \
  yarn \
  yq \
  zsh

brew install --cask \
  1password \
  aws-vpn-client \
  balenaetcher \
  bloomrpc \
  calibre \
  charles \
  docker \
  datagrip \
  firefox \
  google-chrome \
  gpg-suite \
  intellij-idea \
  iterm2 \
  jprofiler \
  kap \
  keka \
  mplayerx \
  ngrok \
  postman \
  signal \
  spectacle \
  spotify \
  transmission \
  tunnelblick \
  virtualbox \
  visual-studio-code \
  vlc \
  wireshark \
  xee

# AWS
pip3 install awscli --upgrade --user

##
$(brew --prefix)/opt/fzf/install
