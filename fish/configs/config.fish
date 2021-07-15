
if type -q starship
    starship init fish | source
end

## Add sbin required for some brew installs
fish_add_path /usr/local/sbin
