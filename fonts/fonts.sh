#!/bin/bash
set -e

brew update
brew tap homebrew/cask-fonts

echo "Installing nerd fonts..."
brew install --cask \
  font-fira-code-nerd-font \
  font-fira-mono-nerd-font \
  font-hack-nerd-font
