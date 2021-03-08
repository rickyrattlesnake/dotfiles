#!/usr/local/bin/fish

set user_snippets_dir ~/.config/fish/conf.d/
set user_config ~/.config/fish/

if test -d $user_config
    echo "[~] copy $user_config ..."
    cp -r $user_config ./configs
end
