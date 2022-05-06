#!/usr/local/bin/fish

set -l local_config_dir ./config/
set -l config_dir ~/.config/

echo "[-] Installing starship configuration..."

cp "$local_config_dir"/* $config_dir

echo "[v] Done"
