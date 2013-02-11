alias ll='ls -lG'
alias ls='ls -G'
alias gvim="open -a /Applications/MacVim.app"

# add known_hosts to bash auto complete
complete -W "$(echo `cat ~/.ssh/known_hosts |cut -f 1 -d ' ' |sed -e s/,.*//g |uniq |grep -v "\["`;)" ssh

export WORKON_HOME=$HOME/.virtualenvs
source /usr/local/bin/virtualenvwrapper.sh
source /usr/local/git/contrib/completion/git-completion.bash


LEFT_BRACKET="\[$(tput bold)\]\[$(tput setaf 1)\]["
RIGHT_BRACKET="\[$(tput bold)\]\[$(tput setaf 1)\]]"


function pgb {
    ref=$(git symbolic-ref HEAD 2> /dev/null) || return
   	echo -n "["${ref#refs/heads/}"]"
}

OLDTIME=`date +%s`
function bash_funct {
	NEWTIME=`date +%s`
	TIMEDIFF=`expr $NEWTIME - $OLDTIME`
	OLDTIME=$NEWTIME
	echo -n "["
	echo -n "$TIMEDIFF sec"
	echo -n "]"
	pgb
}
PROMPT_COMMAND="bash_funct"

CNUM="${LEFT_BRACKET}\[$(tput setaf 3)\]\!${RIGHT_BRACKET}"
UHP="${LEFT_BRACKET}\[$(tput setaf 2)\]\u\[$(tput setaf 1)\]@\[$(tput setaf 2)\]\h\[$(tput setaf 2)\]\[$(tput setaf 1)\]:\[$(tput setaf 4)\]\w${RIGHT_BRACKET}"
PS1="${CNUM}${UHP} \n\\$ \[$(tput sgr0)\]"
#brian's ps1
#PS1='\[\e[0;31m\][\[\e[1;31m\]\u\[\e[0;34m\]@\h \[\e[32m\]\w\[\e[0;31m]\]\n$\[\e[0m\] '
#brian export PS1="\[$(tput bold)\]\[$(tput setaf 1)\][\[$(tput setaf 2)\]\u\[$(tput setaf 1)\]@\[$(tput setaf 2)\]\h:\[$(tput setaf 4)\]\w\[$(tput setaf 1)\]]\\$ \[$(tput sgr0)\]" 
export PATH=/opt/local/bin:/opt/local/sbin:$PATH

# facts on git pull
alias facts="elinks -dump randomfunfacts.com | sed -n '/^| /p' | tr -d \|"

alias hg='history | grep $*'
alias p='cd ~/project/panama'
