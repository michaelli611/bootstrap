export HISTSIZE=1000000
export HISTFILESIZE=1000000

export HISTCONTROL=ignoredups:erasedups

export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"

alias bp="vim ~/.bash_profile && source ~/.bash_profile"

alias ga="git add"
alias gaa="git add ."
alias gc="git commit"
alias gco="git checkout"
alias gca="git commit --amend"
alias gcm="git commit -m"
alias gb="git branch"
alias gg="git grep -n"
alias gl="git log"
alias gs="git status"

alias la="ls -al"

alias json="cd ~/Documents/Development/json"
