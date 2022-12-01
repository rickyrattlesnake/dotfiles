#!/opt/homebrew/bin/fish

echo "updating homebrew..."
brew update

echo "installing programming languages..."
brew install rust
brew install volta

echo "installing modern unix tools ..."
brew install bat
brew install btop
brew install exa
brew install broot
brew install starship
brew install fd
brew install fzf

echo "installing cli packages ..."
brew install ansible
brew install antibody
brew install automake
brew install aws-okta
brew install awscli
brew install bufbuild/buf/buf
brew install cmake
brew install direnv
brew install dockutil
brew install ffmpeg
brew install git
brew install gnupg
brew install go
brew install gpg
brew install graphviz
brew install guetzli
brew install htop
brew install httpie
brew install imagemagick
brew install jmeter
brew install jq
brew install kubernetes-cli
brew install lastpass-cli
brew install libpq
brew install magic-wormhole
brew install m-cli
brew install mitmproxy
brew install newman
brew install nmap
brew install p7zip
brew install postgresql
brew install python
brew install rbenv
brew install rename
brew install ripgrep
brew install rustup-init
brew install stern
brew install shellcheck
brew install terraform-docs
brew install tfenv
brew install tree
brew install watch
brew install watchman
brew install yarn
brew install yq
brew install zsh

echo "installing casks packages ..."
brew install --cask 1password
brew install --cask alfred
brew install --cask aws-vpn-client
brew install --cask balenaetcher
brew install --cask bloomrpc
brew install --cask calibre
brew install --cask charles
brew install --cask docker
brew install --cask firefox
brew install --cask google-chrome
brew install --cask gpg-suite
brew install --cask intellij-idea
brew install --cask iterm2
brew install --cask kap
brew install --cask keka
brew install --cask ngrok
brew install --cask postman
brew install --cask signal
brew install --cask spectacle
brew install --cask spotify
brew install --cask todoist
brew install --cask transmission
brew install --cask tunnelblick
brew install --cask visual-studio-code
brew install --cask vlc
brew install --cask wireshark
