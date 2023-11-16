#!/bin/bash

set -e

echo "[-] Checking xcode version ..."
xcode_version=$(xcode-select --version 2>&1 | sed -ne 's/^xcode-select version \(.*\)./\1/p')
if [[ -z "$xcode_version" ]]
then
  echo "[-] Installing xcode ..."
  xcode-select --install
else
  echo "[v] xcode $xcode_version installed"
fi

echo "[-] Checking python 3 is installed ..."
python_version=$(python3 -V 2>&1 | sed -ne 's/^Python \(.*\)/\1/p')
if [[ -z "$python_version" ]]
then
  echo "[x] Python 3 must be installed to continue!"
  exit 1
else
  echo "[v] Python $python_version installed"
fi

echo "[-] adding python binaries to PATH ..."
export PATH="$HOME/Library/Python/3.9/bin:/opt/homebrew/bin:$PATH"

echo "[-] upgrading pip ..."
sudo -H pip3 install --upgrade pip

brew_version=$(brew --version | sed -ne 's/^Homebrew \(.*\)/\1/p')
if [[ -z "$brew_version" ]]
then
  echo "[-] Install homebrew ..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> $HOME/.zprofile

  eval "$(/opt/homebrew/bin/brew shellenv)"

  echo "[v] Homebrew installed!"
else
  echo "[v] Homebrew $brew_version installed"
fi

echo "[-] Installing ansible ..."
python3 -m pip install --user ansible

ansible-galaxy install -r requirements.yaml
# ansible-playbook -i "localhost," -c local ansible_osx.yml --ask-become-pass
