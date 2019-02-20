##### setup
export PATH=/usr/local/bin:$PATH
#####

######################
## ZSH THEME CONFIG ##
POWERLEVEL9K_MODE='nerdfont-complete'
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_DISABLE_RPROMPT=true

######################

source ~/.zshrc.opts
source ~/.zshrc.keybinding
source ~/.zshrc.alias
source ~/.zshrc.functions

zstyle :compinstall filename "$HOME/.zshrc"
autoload -Uz compinit
compinit

BROWSER=/usr/bin/chromium
EDITOR=/usr/bin/nano

######## zplug ##############
zplugInitPath="$HOME/.zplug/init.zsh"
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

############### Airtasker ###########
export PATH=~/Library/Python/3.7/bin:/usr/local/bin:$PATH
# Disable S3 lookup for maintenance mode in Airtasker Web
export DISABLE_MAINTENANCE_MODE_CHECKS=true
# Disable S3 lookup for heavy tasks in Airtasker Web
export DISABLE_HEAVY_TASKS_CHECKS=true
export REGION=1036
export TARGET=dev
export DEPLOYMENT_UTILS_DIR=$HOME/projects/deployment-utilities
source $DEPLOYMENT_UTILS_DIR/airtasker.rc
source ~/.airtasker.rc
