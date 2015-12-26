# some more ls aliases

alias ll='ls -alF'
alias la='ls -A'
alias l='ls -ltr'

# Git shortcuts

alias gs='git status'
alias gc='git commit -a -m '
alias gb='git branch -a | fgrep "*"'
alias gba='git branch -a'
alias gco='git checkout'
alias gp='git push origin'
alias newbranch='git checkout -b'
alias delbranch='git branch -D'
alias gitprune='git remote prune origin'
alias listchanges='git diff $1 --name-only'

# MVN shortcuts

alias mvnt='mvn -DskipTests'
alias mvnto='mvn -o -DskipTests'
alias mvno='mvn -o'

# General

alias e='gedit'
alias cls='clear'
alias godev='cd ~/dev/'
alias gr='cd ~/dev/raiden/raiden-1'
alias pse='ps -ef | grep '
alias search='find . | grep'
alias newreview='ccollab addgitdiffs new --no-ext-diff'
alias alltests='rm -rf /home/sroy/raiden; mvnto clean install; mvno verify'
