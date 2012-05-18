extract () {
        if [ -f $1 ]; then
                case $1 in
                        *.tar.bz2)
                                tar xjvf $1 ;;
                        *.tar.gz)
                                tar xzvf $1 ;;
                        *.bz2)
                                bzcat $1 > ${1%.bz2} ;;
                        *.rar)
                                unrar x $1 ;;
                        *.gz)
                                zcat $1 > ${1%.gz} ;;
                        *.tar)
                                tar xvf $1 ;;
                        *.tbz2)
                                tar xjvf $1 ;;
                        *.tgz)
                                tar xzvf $1 ;;
                        *.zip)
                                unzip $1 ;;
                        *.Z)
                                uncompress $1 ;;
                        *.7z)
                                7z x $1 ;;
                        *.tbz)
                                tar xjvf ;;
                        *)
                                echo "Unable to extract '$1'" ;;
                esac
        else
                echo "'$1' is not a valid file"
        fi
} 

compress () {
        if [ $1 ]; then
                case $1 in
                        tbz)
                                tar cjvf $2.tar.bz2 $2 ;;
                        tgz)
                                tar czvf $2.tar.gz $2 ;;
                        tar)
                                tar cpvf $2.tar $2 ;;
                        bz2)
                                bzip $2 ;;
                        gz)
                                gzip -c -9 -n $2 > $2.gz ;;
                        zip)
                                zip -r $2.zip $2 ;;
                        7z)
                                7z a $2.7z $2 ;;
                        *)
                                echo "Unable to compress '$1'" ;;
                esac
        else
                echo "'$1' is not a valid file"
        fi
}

calc() {
        echo $* | bc
}

cdl() {
        cd "$1" && ll
}
