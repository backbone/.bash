if [ `which git 2>/dev/null` ]; then
        __git_ps1 () 
        { 
                local b="$(git symbolic-ref HEAD 2>/dev/null)";
                        if [ -n "$b" ]; then
                        printf "(%s)" "${b##refs/heads/}";
                fi
        }
fi

if [ `which hg 2>/dev/null` ]; then
        __hg_ps1 () 
        { 
        while [[ ! -d .hg && `pwd` != / ]]; do cd .. ; done
                if [[ "`pwd`" != "$HOME" ]]; then
                        local b="$(cat .hg/branch 2>/dev/null)";
                        if [ -n "$b" ]; then
                                printf "(%s)" "${b}";
                        fi
                fi
        }
else
        __hg_ps1 ()
        {
                printf ""
        }
fi
