#!/usr/local/bin/fish

set user_snippets_dir ~/.config/fish/conf.d/
set user_config ~/.config/fish/

if test -d $user_config
    echo "[~] copy $user_config ..."
    cp -r ./configs/. $user_config
end
