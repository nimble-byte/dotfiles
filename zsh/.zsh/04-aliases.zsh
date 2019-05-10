# C
alias cp="cp -r"
# D
alias dnf="sudo dnf"
# G
alias ga="git add"
alias gaa="git add --all"
alias gc="git commit -m"
alias gca="git commit -am"
alias gco="git checkout"
alias gpl="git branch -r | awk '{print $1}' | egrep -v -f /dev/fd/0 <(git branch -vv | grep origin) | awk '{print $1}' | xargs git branch -d"
# L
alias ll="ls -alF"
# R
alias reboot="sudo reboot"
alias restart="sudo reboot"
# S
alias scp="scp -r"
alias systemctl="sudo systemctl"
