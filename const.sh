#!/bin/bash

umask 0002
shopt -s histappend
shopt -s cmdhist
shopt -s cdspell
shopt -s globstar
export PATH="$PATH:/usr/local/bin:/sbin:/usr/sbin:/usr/local/sbin:~/bin:~/scripts"
[ -x /usr/bin/vim ] && export EDITOR=/usr/bin/vim
export HISTCONTROL="ignoredupes"
HISTIGNORE="&:ls:[bf]g:exit: cd \"\`*: PROMPT_COMMAND=\'*:cd \'/*"
export LESS=' -R '
export PROMPT_COMMAND='history -a'
[ -x /usr/bin/src/hilite-lesspipe.sh ] && export LESSOPEN="| /usr/bin/src-hilite-lesspipe.sh %s"

unset DBUS_SESSION_BUS_ADDRESS

if [[ "linux" == "$TERM" && -f $HOME/.dircolors ]]; then
    eval $(dircolors -b $HOME/.dircolors)
elif [[ "linux" != "$TERM" &&  -f $HOME/.dircolors_256 ]]; then
    eval $(dircolors -b $HOME/.dircolors_256)
fi

export XCURSOR_SIZE=24

export COLORTERM=truecolor
PROMPT_COLOR=36m
PROMPT_END=$
HOST_FG=31m
HOST_BG=49
