#!/local/bin/fish

echo "Install sdkman ..."
curl -s "https://get.sdkman.io" | bash

echo "Install fisher ..."
curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher
