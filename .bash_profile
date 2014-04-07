alias ll='ls -lG'
alias ls='ls -G'
alias hg='history | grep $*'
alias p='cd ~/project/panama'
alias gvim="open -a /Applications/MacVim.app"

# add known_hosts to bash auto complete
complete -W "$(echo `cat ~/.ssh/known_hosts |cut -f 1 -d ' ' |sed -e s/,.*//g |uniq |grep -v "\["`;)" ssh

export PATH=/opt/local/bin:/opt/local/sbin:/usr/local/bin:/Users/ajhawks/bin:$PATH
export ARCHFLAGS="-arch x86_64"
export WORKON_HOME=$HOME/.virtualenvs

source /usr/local/bin/virtualenvwrapper.sh
#source /usr/local/git/contrib/completion/git-completion.bash

# brew completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi


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


