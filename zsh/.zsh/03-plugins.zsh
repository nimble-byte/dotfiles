# plugins
plugins=(
  git
  yarn
  zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

# settings
## autosuggestions
bindkey "^ " autosuggest-accept
