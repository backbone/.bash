#!/bin/bash

umask 0002
shopt -s histappend
shopt -s cmdhist
shopt -s cdspell
export PATH="$PATH:/usr/local/bin:/sbin:/usr/sbin:/usr/local/sbin:~/bin:~/scripts"
[ -x /usr/bin/vim ] && export EDITOR=/usr/bin/vim
export HISTCONTROL="ignoredupes"
HISTIGNORE="&:ls:[bf]g:exit: cd \"\`*: PROMPT_COMMAND=\'*:cd \'/*"
export LESS=' -R '
export PROMPT_COMMAND='history -a'
[ -x /usr/bin/src/hilite-lesspipe.sh ] && export LESSOPEN="| /usr/bin/src-hilite-lesspipe.sh %s"

unset DBUS_SESSION_BUS_ADDRESS

[[ -f $HOME/.dircolors ]] && eval $(dircolors -b $HOME/.dircolors)
[[ -n "$DISPLAY" ]] && [[ -f $HOME/.dircolors_256 ]] && eval $(dircolors -b $HOME/.dircolors_256)
