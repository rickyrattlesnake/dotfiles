#!/usr/bin/env fish

set -e

echo "[-] Starting setup fish shell script ..."

echo "[-] Install fisher ..."
fisher install jorgebucaran/fisher

echo "[-] Install fzf helpers ..."
set brew_install_path (brew --prefix)
$brew_install_path/opt/fzf/install

echo "[-] Install broot aliases ..."
broot --install

echo "Setup shell defaults"
echo $(which fish) | sudo tee -a /etc/shells
chsh -s $(which fish)

echo "[-] Installing fisher plugins ..."
fisher install jethrokuan/z
fisher install PatrickF1/fzf.fish
fisher install edc/bass

echo "[v] Done ✅"
