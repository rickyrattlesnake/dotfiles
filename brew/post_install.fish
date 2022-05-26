#!/opt/homebrew/bin/fish

echo "Install fzf helpers ..."
set brew_install_path (brew --prefix)

$brew_install_path/opt/fzf/install

echo "Install broot aliases ..."

broot --install
