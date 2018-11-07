##### setup
export PATH=/usr/local/bin:$PATH
#####

######################
## ZSH THEME CONFIG ##
POWERLEVEL9K_MODE='nerdfont-complete'
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

######## zplug ##############
zplugInitPath=$(brew --prefix zplug)/init.zsh
source $zplugInitPath

zplug "bhilburn/powerlevel9k", use:powerlevel9k.zsh-theme

zplug load
######## nvm ##############
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh
###########################

#### kubernetes ####
if [ $commands[kubectl] ]; then source <(kubectl completion zsh); fi
######
