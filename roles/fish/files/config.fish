set fish_greeting fish shell. $PWD (date +%Y/%m/%d_%H:%M:%S)

set GOPATH $HOME/go
set NODE_BIN $HOME#/.nodebrew/current/bin

set PATH $NODE_BIN $GOPATH/bin $PATH

alias rm='rm -i'
alias gac='git add .; git commit'

eval (direnv hook fish)
