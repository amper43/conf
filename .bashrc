alias ls='ls -ApC --color=auto'
alias -- \-='popd'
alias -- \+='pushd .'

export TMPDIR=/tmp
export ANSIBLE_HOST_KEY_CHECKING=False

alias gs='git status'
alias gd='git diff'
alias ..='cd ../'
alias ...='cd ../../'
alias cd='cd -P'
alias gti='git'
alias tmux='tmux -2 -u'
alias l=ls
alias sl=ls
alias cdo='cd $OLDPWD'
alias less='less -R'
alias wget='wget --no-check-certificate '
alias gim='vim -u ~/.vimrc.go'
alias inst='sudo apt-get install '

export GOROOT=/usr/local/go
export GOPATH=~/gocode
export PATH=$PATH:$GOPATH/bin:$GOROOT/bin
export ANSIBLE_NO_HOST_KEY_CHECKING=False
export PYTHONSTARTUP="/home/jo/.pythonrc"


set PYTHONDONTWRITEBYTECODE
