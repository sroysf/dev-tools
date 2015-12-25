# some more ls aliases

alias ll='ls -alF'
alias la='ls -A'
alias l='ls -ltr'

# Git shortcuts

alias gs='git status'
alias gc='git commit -a -m '
alias gb='git branch -a | fgrep "*"'
alias gba='git branch -a'
alias gbame='gba | grep sroy'
alias gco='git checkout'
alias gp='git push origin'
alias newbranch='git checkout -b'
alias delbranch='git branch -D'
alias gitprune='git remote prune origin'
alias listchanges='git diff $1 --name-only'
alias cb='mvnt clean install'
alias docker-init='eval $(boot2docker shellinit)'
alias goes='cd ~/dev/Release/repos/EdgeControl; . ./env.sh'

# MVN shortcuts

alias mvnt='mvn -DskipTests'
alias mvnto='mvn -o -DskipTests'
alias mvno='mvn -o'

# General

alias e='open -e'
alias cls='clear'
alias godev='cd ~/dev/git'
alias pse='ps -ef | grep '
alias search='find . | grep'
alias newreview='ccollab addgitdiffs new --no-ext-diff'

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

export GOPATH=$HOME/go
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
export PATH=$PATH:/usr/local/git/bin:$HOME/bin:$GOPATH/bin:/usr/local/go/bin
export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.8.0_05.jdk/Contents/Home/"

export P4CLIENT=saptarshi.roy_mac
export P4USER=saptarshi.roy
export APPS_HOME=/Users/saptarshi.roy/dev/perforce/apps/insights/main
export M2_HOME=/Users/saptarshi.roy/apps/apache-maven-3.2.1/

function parse_git_dirty {
 [[ $(git status 2> /dev/null | tail -n1) != "nothing to commit (working directory clean)" ]] && echo "*"
}

function parse_git_branch {
 git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/[\1$(parse_git_dirty)]/"
}

export PS1="\u ==> \w\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "
export P4PORT=ssl:p4proxy.soma.salesforce.com:1999

export GOROOT=$HOME/go

export DOCKER_HOST=tcp://127.0.0.1:2376
export DOCKER_TLS_VERIFY=0
export DOCKER_CERT_PATH=~/.boot2docker/certs/boot2docker-vm

PATH=$PATH:$GOROOT/bin:$HOME/.rvm/bin

