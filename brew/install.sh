#!/bin/bash

set -e

echo "updating homebrew..."
brew update

echo "installing cli packages ..."
brew install ansible \
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
  libpq \
  mitmproxy \
  newman \
  nmap \
  nvm \
  p7zip \
  postgresql \
  python \
  rbenv \
  rename \
  rustup-init \
  stern \
  terraform-docs \
  tfenv \
  the_silver_searcher \
  tree \
  watch \
  watchman \
  yarn \
  yq \
  zsh

echo "installing casks packages ..."
brew install --cask 1password \
  aws-vpn-client \
  balenaetcher \
  bloomrpc \
  calibre \
  charles \
  docker \
  firefox \
  google-chrome \
  gpg-suite \
  intellij-idea \
  iterm2 \
  kap \
  keka \
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
  wireshark

echo "additional configurations cli packages ..."
$(brew --prefix)/opt/fzf/install
