set fish_greeting fish shell. $PWD (date +%FT%T%z)

set GOPATH $HOME/go
set NODE_BIN $HOME/.nodebrew/current/bin

set PATH $NODE_BIN $GOPATH/bin $PATH

alias rm='rm -i'
alias gac='git add .; git commit'
alias datetime='date +%FT%T%z | pbcopy; date +%FT%T%z'

eval (direnv hook fish)
