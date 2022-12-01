#!/opt/homebrew/bin/fish

echo "Setup shell defaults"
echo $(which fish) | sudo tee -a /etc/shells
chsh -s $(which fish)

echo "Installing fisher plugins ..."
fisher install jethrokuan/z
fisher install PatrickF1/fzf.fish
fisher install edc/bass
# reitzig/sdkman-for-fish@v1.4.0
