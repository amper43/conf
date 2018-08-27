alias ls='ls -ApC --color=auto'
alias -- \-='popd'
alias -- \+='pushd .'

export TMPDIR=/tmp
export PYTHONPATH=~/extra/service-console/ECSAutomation/lib/
export ANSIBLE_HOST_KEY_CHECKING=False

alias gs='git status'
alias gd='git diff'
alias ..='cd ../'
alias ...='cd ../../'
alias cd='cd -P'
alias gti='git'
alias tmux='tmux -2 -u'
alias sso='sshpass -p ChangeMe ssh'
alias l=ls
alias sl=ls
alias cdo='cd $OLDPWD'
alias less='less -R'
alias wget='wget --no-check-certificate '
alias gim='vim -u ~/.vimrc.go'
alias inst='sudo apt-get install '

export GOROOT=/usr/local/go
export GOPATH=~/gocode:/workspace/vipr-object-qa/ECSAutomation/monitoring/go
export PATH=$PATH:$GOPATH/bin:$GOROOT/bin
export ANSIBLE_NO_HOST_KEY_CHECKING=False
#export GREP_OPTIONS='--color=always'
export PYTHONSTARTUP="/home/jo/.pythonrc"

export DEVKIT_DOCKER_IMAGE_REPO="nile-registry.lss.emc.com:5000/emcecs/fabric/devkit"
export DEVKIT_WORKSPACE_HOST_DIR_PATH=/home/jo/extra 

qssh() {
    if [ -z "$1" ]; then
        return
    fi

    user=root
    LC_ALL=C grep -r "$1" /workspace/inventory/automation/clusters 2>&1 1>/dev/null
    if [ $? -eq 0 ]; then
        user=admin
    fi
    sshpass -p ChangeMe ssh $user@$1
}

#set PYTHONDONTWRITEBYTECODE
