## init starship if it exists
if type -q starship
    starship init fish | source
end

## init direnv if it exists
if type -q direnv
    direnv hook fish | source
end

# init rbenv
if type -q rbenv && status --is-interactive
    source (rbenv init -|psub)
end

## Add sbin required for some brew installs
if test -d /usr/local/sbin
    fish_add_path -a /usr/local/sbin
end

## Add sbin required for kube aliases
if test -d ~/.kube/commands
    fish_add_path -a ~/.kube/commands
end

## Enable fzf.fish bindings
## https://github.com/PatrickF1/fzf.fish
fzf_configure_bindings

fish_add_path $HOME/.cargo/bin
fish_add_path /usr/local/opt/tcl-tk/bin
fish_add_path /usr/local/opt/llvm/bin
