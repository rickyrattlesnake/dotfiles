export ZSH_ANTIGEN=/home/rattlesnake/.cfg/tools/antigen/antigen.zsh
# export ZSH=/home/rattlesnake/.oh-my-zsh

source $ZSH_ANTIGEN

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Load the theme.
antigen theme robbyrussell/oh-my-zsh themes/agnoster

# Tell Antigen that you're done.
antigen apply