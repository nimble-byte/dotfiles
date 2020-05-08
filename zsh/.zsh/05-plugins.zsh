# plugins
plugins=(
  colored-man-pages
  docker
  git
  httpie
  sudo
  zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

# settings
## autosuggestions
bindkey "^ " autosuggest-accept
