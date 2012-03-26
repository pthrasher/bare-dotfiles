# General
alias ll="ls -al"
alias ..="cd .."

# Git
alias gpo="git push origin"
alias gfo="git fetch origin"
alias gmom="git merge origin/master"
alias gpu="git push upstream"
alias gfu="git fetch upstream"
alias gmum="git merge upstream/master"
alias gst="git status"
alias gc="git commit -vm"
alias gca="git commit -avm"

#vim
alias v="vim"

# enable color support of ls and also add handy aliases
if [ "$TERM" != "dumb" ]; then
    eval "`dircolors -b`"
    alias ls='ls --color=auto'
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
xterm-color)
    PS1='[\[\033[01;32m\]\u@\h\[\033[00m\]] \[\033[01;34m\]\W\[\033[00m\] \$ '
    ;;
*)
    PS1='[\h] \W \$ '
    ;;
esac

extract () {
     if [ -f $1 ] ; then
         case $1 in
             *.tar.bz2)   tar xjf $1        ;;
             *.tar.gz)    tar xzf $1     ;;
             *.bz2)       bunzip2 $1       ;;
             *.rar)       rar x $1     ;;
             *.gz)        gunzip $1     ;;
             *.tar)       tar xf $1        ;;
             *.tbz2)      tar xjf $1      ;;
             *.tgz)       tar xzf $1       ;;
             *.zip)       unzip $1     ;;
             *.Z)         uncompress $1  ;;
             *.7z)        7z x $1    ;;
             *)           echo "'$1' cannot be extracted via extract()" ;;
         esac
     else
         echo "'$1' is not a valid file"
     fi
}
