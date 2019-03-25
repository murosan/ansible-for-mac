set fish_greeting fish shell. $PWD (date +%FT%T%z)

set GOPATH "{{ go_path }}"
set NODE_BIN ~/.nodebrew/current/bin

set PATH $NODE_BIN $GOPATH/bin $PATH

alias rm='rm -i'
alias gac='git add .; git commit'
alias datetime='date +%FT%T%z | pbcopy; date +%FT%T%z'
alias br='{{ git_branch_path }}'

eval (direnv hook fish)
