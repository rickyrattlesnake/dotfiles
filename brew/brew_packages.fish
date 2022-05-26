#!/opt/homebrew/bin/fish

echo "updating homebrew..."
brew update

echo "installing programming languages..."
brew install \
    rust \
    volta

echo "installing modern unix tools ..."
brew install \
    fish \
    bat \
    btop \
    exa \
    broot \
    starship \
    fd \
    fzf

echo "installing cli packages ..."
brew install ansible \
    antibody \
    automake \
    aws-okta \
    awscli \
    bufbuild/buf/buf \
    cmake \
    direnv \
    ffmpeg \
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
    todoist \
    transmission \
    tunnelblick \
    visual-studio-code \
    vlc \
    wireshark

echo "additional configurations cli packages ..."
# $(brew --prefix)/opt/fzf/install
