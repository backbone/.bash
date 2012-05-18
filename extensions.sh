[[ -z $DISPLAY ]] && {
        alias -s {jpg,jpeg,bmp,gif,png,svg,xbm,psd}="fbi"
        alias -s {avi,mpeg,mpg,3gp}="video"
        alias -s {html,htm}="links -g"
        alias -s {txt,lst}="cat"
} || {
        alias -s {jpg,jpeg,bmp,gif,png,svg}="eog"
        alias -s {pdf,djvu}="nohup > /dev/null 2>&1 evince"
        alias -s {avi,mpeg,mpg,3gp}="mplayer"
        alias -s {odt,doc,rtf}="nohup > /dev/null 2>&1 oowriter"
        alias -s {html,htm}="firefox"
        alias -s {txt,lst}="cat"
        alias -s exe="wine"
}

alias -s {wav,mp3,ogg}="alsaplayer"
