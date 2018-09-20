######################
## ZSH THEME CONFIG ##
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_DISABLE_RPROMPT=true

######################
setopt appendhistory autocd

zstyle :compinstall filename "$HOME/.zshrc"
autoload -Uz compinit
compinit

source ~/.zshrc.keybinding
[[ $- != *i* ]] && return

source ~/.zshrc.alias

BROWSER=/usr/bin/chromium
EDITOR=/usr/bin/nano

# ## zplug START
# zplugInitPath=$(pacman -Ql zplug | grep -i "zplug/init.zsh" | sed -E "s/zplug //")
# source $zplugInitPath

# zplug "bhilburn/powerlevel9k", use:powerlevel9k.zsh-theme

# zplug load
## zplug END


######## nvm ##############
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh
###########################
