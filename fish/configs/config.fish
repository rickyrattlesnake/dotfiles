## init starship if it exists
if type -q starship
    starship init fish | source
end

## Add sbin required for some brew installs
if test -d /usr/local/sbin
    fish_add_path -a /usr/local/sbin
end

## Add sbin required for kube aliases
if test -d ~/.kube/commands
    fish_add_path -a ~/.kube/commands
end

# init ruby
status --is-interactive; and source (rbenv init -|psub)

# init rust
set -U fish_user_paths $HOME/.cargo/bin $fish_user_paths
