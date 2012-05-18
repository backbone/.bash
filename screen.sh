case $TERM in
	screen)
		export PROMPT_COMMAND='echo -n -e "\033k\033\\"'
	;;
esac
