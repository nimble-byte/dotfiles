# plugins
plugins=(
  colored-man-pages
  docker
  git
  httpie
  sudo
  yarn
  zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

# settings
## autosuggestions
bindkey "^ " autosuggest-accept
