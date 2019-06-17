export PS1="\[\033[01;$PROMPT_COLOR\]\u@\[\033[01;$HOST_COLOR\]\h\[\033[01;34m\] \w\\
\[\033[01;30m\]\$(__git_ps1)\$(__hg_ps1) \\
\[\033[01;$PROMPT_COLOR\]\$PROMPT_END\[\033[00m\] \\
"
