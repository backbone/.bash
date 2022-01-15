export PS1="\e[01;$PROMPT_COLOR\u@\e[$HOST_BG;$HOST_FG\h\e[49;34m\] \w\
\e[01;30m\$(__git_ps1)\$(__hg_ps1) \
\e[01;$PROMPT_COLOR\$PROMPT_END\e[00m \
"
