#!/bin/bash

set -e

echo "Generating a new SSH key"
ssh-keygen -t ed25519 -C "ricky.ratnayake@gmail.com"

eval "$(ssh-agent -s)"

echo "Modify ssh config to automatically load keys into the ssh-agent and store passphrases in your keychain"
touch ~/.ssh/config
sudo tee -a ~/.ssh/config >/dev/null <<EOT
Host *
  AddKeysToAgent yes
  UseKeychain yes
  IdentityFile ~/.ssh/id_ed25519
EOT

echo "Add your SSH private key to the ssh-agent and store your passphrase in the keychain"
ssh-add -K ~/.ssh/id_ed25519

echo "Copying public key to clipboard"
pbcopy <~/.ssh/id_ed25519.pub
