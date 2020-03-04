export HISTSIZE=1000000
export HISTFILESIZE=1000000

export HISTCONTROL=ignoredups:erasedups

# Get rid of username in prompt
DEFAULT_USER=`whoami`

alias vr="vim ~/.bootstrap/vimrc"
alias zr="vim ~/.bootstrap/zshrc && source ~/.zshrc"

alias ga="git add"
alias gaa="git add ."
alias gc="git commit"
alias gco="git checkout"
alias gca="git commit --amend"
alias gcm="git commit -m"
alias gb="git branch"
alias gd="git diff"
alias gdh="git diff HEAD"
alias gdhh="git dif HEAD HEAD^"
alias gg="git grep -n"
alias ggi="git grep -ni"
alias gl="git log"
alias gs="git status"

alias la="ls -al"

alias python="ipython"
alias python3="ipython3"

alias wo="source .venv/bin/activate"

alias bcc="cd ~/Documents/Development/Brainchild/cerebellum"
