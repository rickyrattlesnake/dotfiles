#!/bin/bash

echo "Install Xcode ..."
xcode-select –install
# Or manually from https://developer.apple.com/download/all/

echo "Install brew ..."
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo "Install sdkman ..."
curl -s "https://get.sdkman.io" | bash

echo "Install fish ..."
brew install fish

echo "Install fisher ..."
curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher
