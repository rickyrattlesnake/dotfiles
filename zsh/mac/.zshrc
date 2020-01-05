# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block, everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

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

KUBECONFIG=$HOME/.kube/config:$HOME/.kube/config.airtasker.yml
if [ $commands[kubectl] ]; then
  source <(kubectl completion zsh);
fi

# rbenv auto init
if [ $commands[rbenv] ]; then
  eval "$(rbenv init -)"
fi

# airtasker configurations
if [ -f "~/.zshrc.airtasker" ]; then
  source ~/.zshrc.airtasker
fi
