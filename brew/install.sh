#!/bin/bash

brew update
brew tap homebrew/cask-fonts

brew install virtualbox \
  gpg \
  zsh \
  python3 \
  python2

brew cask install font-hack-nerd-font \
  iterm2 \
  visual-studio-code \
  gpg-suite-no-mail