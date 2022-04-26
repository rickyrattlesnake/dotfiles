#!/bin/bash

set -e

echo "updating homebrew..."
brew update

echo "installing programming languages..."
brew install rust

echo "installing modern cli tools ..."
brew install bat \
  btop \
  exa \
  broot

echo "installing cli packages ..."
brew install ansible \
  antibody \
  automake \
  aws-okta \
  awscli \
  bat \
  bufbuild/buf/buf \
  cmake \
  direnv \
  fd \
  fish \
  ffmpeg \
  fzf \
  git \
  gnupg \
  go \
  gpg \
  graphviz \
  guetzli \
  htop \
  httpie \
  imagemagick \
  jmeter \
  jq \
  kubernetes-cli \
  lastpass-cli \
  libpq \
  magic-wormhole \
  m-cli \
  mitmproxy \
  newman \
  nmap \
  nvm \
  p7zip \
  postgresql \
  python \
  rbenv \
  rename \
  ripgrep \
  rustup-init \
  stern \
  terraform-docs \
  tfenv \
  tree \
  watch \
  watchman \
  yarn \
  yq \
  zsh

echo "installing casks packages ..."
brew install --cask 1password \
  alfred \
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
