shopt -s histappend
HISTCONTROL=ignoreboth
HISTSIZE=10000
HISTFILESIZE=2000

shopt -s checkwinsize

color_support=$(tput colors)
has_colors=no

if test -n "$color_support" && test $color_support -ge 8; then
    has_colors=yes
fi

if [ "$has_colors" = yes ]; then
    PS1="\[\033[01;31m\]\u@\h\[\033[00m\] \[\033[01;32m\]\w\[\033[00m\]\n\$ "
else
    PS1="\u@\h \w\n\$ "
fi

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

if ! shopt -oq posix; then
    if [ -f /usr/share/bash-completion/bash_completion ]; then
        . /usr/share/bash-completion/bash_completion
    elif [ -f /etc/bash_completion ]; then
        . /etc/bash_completion
    fi
fi

export GREP_OPTIONS="--color=auto"
