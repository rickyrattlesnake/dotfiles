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

## Add m1 homebrew default install path
if test -d /opt/homebrew/bin
    fish_add_path -p /opt/homebrew/bin
end

if test -d $HOME/Library/Python/3.9/bin
    fish_add_path -p $HOME/Library/Python/3.9/bin
end

if test -d $HOME/.cargo/bin
    fish_add_path -p $HOME/.cargo/bin
end

## Set aws ca certificate to mozilla when installed by brew
set -gx AWS_CA_BUNDLE $(brew --prefix)/etc/ca-certificates/cert.pem

# fish_add_path /usr/local/opt/tcl-tk/bin
# fish_add_path /usr/local/opt/llvm/bin
set -gx VOLTA_HOME "$HOME/.volta"
set -gx PATH "$VOLTA_HOME/bin" $PATH
