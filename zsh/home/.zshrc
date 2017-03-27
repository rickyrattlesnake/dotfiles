autoload -Uz compinit promptinit
zstyle :compinstall filename '/home/rattlesnake/.zshrc'

HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

setopt appendhistory autocd extendedglob nomatch
unsetopt beep notify

bindkey -v # ZLE in vi mode

export TERM="xterm-256color"
setopt RM_STAR_WAIT interactivecomments CORRECT

# prompt
promptinit
prompt walters

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
