set fish_greeting fish shell. $PWD (date +%FT%T%z)

set GOPATH "{{ go_path }}"
set NODE_BIN ~/.nodebrew/current/bin

set PATH {{ shells_dir }} $NODE_BIN $GOPATH/bin $PATH

alias rm='rm -i'
alias gac='git add .; git commit'
alias datetime='date +%FT%T%z | pbcopy; date +%FT%T%z'

eval (direnv hook fish)
