##### setup
export PATH=~/Library/Python/3.7/bin:/usr/local/bin:$PATH
#####

######################

source ~/.zshrc.opts
source ~/.zshrc.keybinding
source ~/.zshrc.alias
source ~/.zshrc.functions

zstyle :compinstall filename "$HOME/.zshrc"

BROWSER=/usr/bin/chromium
EDITOR=/usr/bin/nano

######## Antibody ###########
autoload -Uz compinit
compinit -i

source ~/.zsh_plugins.sh

#############################


######### Powerlevel10k Config
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh
#########

### fzf
export FZF_DEFAULT_OPTS='--height 40% --layout=reverse --border'
####

######## nvm ##############
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh
###########################

#### kubernetes ####
KUBECONFIG=$HOME/.kube/config:$HOME/.kube/config.airtasker.yml
if [ $commands[kubectl] ]; then source <(kubectl completion zsh); fi
######

# Disable S3 lookup for maintenance mode in Airtasker Web
export DISABLE_MAINTENANCE_MODE_CHECKS=true
# Disable S3 lookup for heavy tasks in Airtasker Web
export DISABLE_HEAVY_TASKS_CHECKS=true
export REGION=1036
export TARGET=dev
export DEPLOYMENT_UTILS_DIR=$HOME/projects/deployment-utilities
source $DEPLOYMENT_UTILS_DIR/airtasker.rc
source $DEPLOYMENT_UTILS_DIR/kubernetes.rc

export CLOUDSMITH_API_KEY=836c4d11a7b14f988bffdf7b1d740750c67c789a

# rbenv auto init
eval "$(rbenv init -)"
