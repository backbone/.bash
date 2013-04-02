alias dfh='df -hT'
alias dfm='df -mT'
alias la='ls -a'
alias ll='ls -l'
alias l='ll'
alias lh='ls -h'
alias lla='ls -la'
alias llh='ls -lh'
alias llah='ls -lah'
alias llha='llah'
alias su='sudo su -'
alias hd='hexdump -C'
alias cp='cp -vi'
alias mv='mv -vi'
alias rm='rm -vi'
alias ln='ln -vi'
alias chmod='chmod -v'
alias chown='chown -v'
alias chgrp='chgrp -v'
alias mkdir='mkdir -v'
alias rmdir='rmdir -v'
alias fs='du -shcx * .[^.]* 2>/dev/null | sort -h'
which sudo &>/dev/null && alias krnlconfig="sudo make MENUCONFIG_MODE=single_menu MENUCONFIG_COLOR=mono menuconfig"
which valgrind &>/dev/null && alias valgrind='valgrind --tool=callgrind'
which cgdb &>/dev/null && alias cgdb='LANG=ru_RU.koi8-r cgdb'
which rsync &>/dev/null && alias cpb='rsync --progress -h' \
                        && alias cpbs='rsync --progress -h -rax --delete-excluded'
which alsamixer &>/dev/null && alias alsamixer='alsamixer -g' && alias equilizer='alsamixer -D equal'
which valgrind &>/dev/null && 
which valgrind &>/dev/null && 
which valgrind &>/dev/null && 
[ -x /usr/libexec/mc/mc-wrapper.sh ] && alias mc='. /usr/libexec/mc/mc-wrapper.sh -x'
which network.sh &>/dev/null && alias net='network.sh'
which colordiff &>/dev/null && alias diff='colordiff'
which colormake &>/dev/null && alias make='colormake 2>/dev/null'
if [ `which colorgcc 2>/dev/null` ]; then
	alias c++='/usr/lib/colorgcc/bin/c++'
	alias cc='/usr/lib/colorgcc/bin/cc'
	alias g++='/usr/lib/colorgcc/bin/g++'
	alias gcc='/usr/lib/colorgcc/bin/gcc'
fi

if [ `which grc 2>/dev/null` ]; then
	alias configure='grc configure'
	alias netstat='grc netstat'
	alias ping='grc ping'
fi
which iconv &>/dev/null && alias cp1251toUTF8='iconv -f cp1251 -t utf8'

which eix &>/dev/null && alias eix='TERM=screen eix'
which vim &>/dev/null && alias vim='TERM=xterm-256color vim'
which vim &>/dev/null && alias svim='sudo TERM=xterm-256color vim'
alias v='vim'
alias sv='svim'
which mc &>/dev/null && alias mc='TERM=xterm-256color mc'
which mc &>/dev/null && alias smc='sudo TERM=xterm-256color mc'
alias m='mc'
alias sm='smc'
alias git='TERM=xterm-256color git'
