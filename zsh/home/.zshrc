autoload -Uz compinit promptinit up-line-or-beginning-search down-line-or-beginning-search

# Line Tab Completion
zstyle :compinstall filename '/home/rattlesnake/.zshrc'
zstyle ':completion:*' menu select=10

# History 
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
[[ -n "$key[Up]"   ]] && bindkey -- "$key[Up]"   up-line-or-beginning-search
[[ -n "$key[Down]" ]] && bindkey -- "$key[Down]" down-line-or-beginning-search


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
