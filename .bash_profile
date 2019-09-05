 ~/.bashrc ]] && source ~/.bashrc

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

#ALIASSES
alias ls='ls -GFh'
alias ll='ls -la'

#docker
alias cleardc='docker container rm -f $(docker container ls -aq)'
alias cleardi='docker rmi $(docker images -q)'

#login
alias kib='kinit jvanheijst@BOLCOM.NET'

#kubernetes
alias kdes='kubectl describe'
alias kg='kubectl get'
alias kdel='kubectl delete'
alias klogs='kubectl logs -c stg-sentry-app'

#some useful
alias grep='grep --color=auto'
alias h='history'
alias hg='history | grep'
alias j='jobs -l'
alias now='date +"%T"'
alias nowtime=now
alias nowdate='date +"%d-%m-%Y"'
alias ping='ping -c 5'
alias header='curl -I'
alias kill8080='kill -kill `lsof -t -i tcp:8080`'
alias feclean='rm yarn.lock && rm -rf node_modules/ && rm package-lock.json'
alias npm_scripts='cat package.json | jq -r ".scripts"'

#git bol specific, not in git tool
alias gpushg='git push origin HEAD:refs/for/develop' #push gerrit.

# Go Back Up
alias ..="cd .."
alias ..2="cd ../.."
alias ..3="cd ../../.."
alias ..4="cd ../../../.."
alias ..5="cd ../../../../.."

# include git tool
source ~/projects/personal/bash-git-tools/.bp_git_tool

#git branch name
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

function prompt {
  local BLACK="\[\033[0;30m\]"
  local BLACKBOLD="\[\033[1;30m\]"
  local RED="\[\033[0;31m\]"
  local REDBOLD="\[\033[1;31m\]"
  local GREEN="\[\033[0;32m\]"
  local GREENBOLD="\[\033[1;32m\]"
  local YELLOW="\[\033[0;33m\]"
  local YELLOWBOLD="\[\033[1;33m\]"
  local BLUE="\[\033[0;34m\]"
  local BLUEBOLD="\[\033[1;34m\]"
  local PURPLE="\[\033[0;35m\]"
  local PURPLEBOLD="\[\033[1;35m\]"
  local CYAN="\[\033[0;36m\]"
  local CYANBOLD="\[\033[1;36m\]"
  local WHITE="\[\033[0;37m\]"
  local WHITEBOLD="\[\033[1;37m\]"
  local RESETCOLOR="\[\e[00m\]"

  export PS1="$RED\u $PURPLE@ $GREEN\w $RESETCOLOR$GREENBOLD\$(parse_git_branch) → $RESETCOLOR"
  export PS2=" | → $RESETCOLOR"
}

prompt

export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_101.jdk/Contents/Home

export WEBSHOP_HOME="$HOME/projects/webshop"


