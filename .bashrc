# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples
# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# don't put duplicate lines in the history. See bash(1) for more options
export HISTCONTROL=ignoredups

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# enable color support of ls and also add handy aliases
if [ "$TERM" != "dumb" ]; then
    eval `dircolors -b`
    alias ls='ls --color=always'
    alias dir='ls --color=auto --format=vertical'
    alias vdir='ls --color=auto --format=long'
fi
#safe delete
alias rm='rm -i'

# some more ls aliases
alias less='less -SR'
alias l='ls -lLBhX --time-style=locale'
alias la='ls -la $1 | less'
alias ll='ls -lX'

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(lesspipe)"

# set variable identifying the chroot you work in
if [ -z "$debian_chroot" -a -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

#disable the annoying beeps
#echo -ne "\33[11;0]"

#ANSI color code
#echo -e "\033[1mBold\033[0m -- \033[01;04mBold and Underline\033[0m -- \033[4mUnderline\033[0m"
#Foreground colors: 30=black;31=red;32=green;33=red;34=blue;35=magenta;36=cyan;37=white;38=?;39=white(default);
#Background colors: 40=black;41=red;42=green;43=red;44=blue;45=magenta;46=cyan;47=white;48=?;49=black(default);

# Comment in the above and uncomment this below for a color prompt
PS1='[${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]: \[\033[01;34m\]\w\[\033[00m\]]\$ '

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME}: ${PWD}\007"'
    ;;
*)
    ;;
esac

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc).
if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi

alias and-connect="mtpfs -o allow_other /media/GT-i9000"
alias and-disconnect="fusermount -u /media/GT-i9000"


PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
