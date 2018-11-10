######################
## ZSH THEME CONFIG ##
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_DISABLE_RPROMPT=true

######################

source ~/.zshrc.keybinding

setopt appendhistory autocd
zstyle :compinstall filename '/home/rattlesnake/.zshrc'

autoload -Uz compinit
compinit

[[ $- != *i* ]] && return


source ~/.zshrc.alias

BROWSER=/usr/bin/chromium
EDITOR=/usr/bin/nano

## zplug START
zplugInitPath=$(pacman -Ql zplug | grep -i "zplug/init.zsh" | sed -E "s/zplug //")
source $zplugInitPath

zplug "bhilburn/powerlevel9k", use:powerlevel9k.zsh-theme

zplug load
## zplug END

## NVM configuration ##
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PATH=~/.local/bin:$PATH
