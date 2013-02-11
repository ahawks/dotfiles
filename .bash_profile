alias ll='ls -lG'
alias ls='ls -G'
#export PS1='\h:\W \u\$ ' #$(__git_ps1 "(%s)")'
alias gvim="open -a /Applications/MacVim.app"

# add known_hosts to bash auto complete
complete -W "$(echo `cat ~/.ssh/known_hosts |cut -f 1 -d ' ' |sed -e s/,.*//g |uniq |grep -v "\["`;)" ssh

export WORKON_HOME=$HOME/.virtualenvs
source /usr/local/bin/virtualenvwrapper.sh
source /usr/local/git/contrib/completion/git-completion.bash
function pgb {
    ref=$(git symbolic-ref HEAD 2> /dev/null) || return
    echo "("${ref#refs/heads/}")"
}
OLDTIME=`date +%s`
function bash_funct {
	NEWTIME=`date +%s`
	TIMEDIFF=`expr $NEWTIME - $OLDTIME`
	OLDTIME=$NEWTIME
	echo -n "["
	echo -n "$TIMEDIFF sec"
	echo -n "]"
}

#alias __git_ps1="git branch 2>/dev/null | grep '*' | sed 's/* \(.*\)/(\1)/' 2>/dev/null"
PROMPT_COMMAND="bash_funct"
#PROMPT_COMMAND='echo -n "[$(tput setaf 3)]$(date +%H:%M:%S)$(tput setaf 1)$(tput sgr0)]"'
#PS1='[\u@\h \W$(__git_ps1 " (%s)")]\$ '
#PS1='[\!][\u@\h \W$ $(pgb)]\n\$ '

export PS1="\[$(tput bold)\]\[$(tput setaf 1)\][\[$(tput setaf 3)\]\!\[$(tput setaf 1)\]]\[$(tput sgr0)\]\[$(tput bold)\]\[$(tput setaf 1)\][\[$(tput setaf 5)\]\u@\h \[$(tput setaf 2)\]\W\[$(tput setaf 1)\]] \[$(tput setaf 4)\]$(pgb)\n\\$ \[$(tput sgr0)\]"
#brian's ps1
#PS1='\[\e[0;31m\][\[\e[1;31m\]\u\[\e[0;34m\]@\h \[\e[32m\]\w\[\e[0;31m]\]\n$\[\e[0m\] '

##
# Your previous /Users/andrewhawks/.bash_profile file was backed up as /Users/andrewhawks/.bash_profile.macports-saved_2012-07-27_at_14:48:15
##

# MacPorts Installer addition on 2012-07-27_at_14:48:15: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

SUEZ_DIR=/usr/local/projects/suez
alias func_goals='py.test -v `find functional -name \*.py | grep goals`'
alias py.test='PYTHONPATH=${SUEZ_DIR}/server:${SUEZ_DIR}/testing py.test'

# facts on git pull
alias facts="elinks -dump randomfunfacts.com | sed -n '/^| /p' | tr -d \|"
alias hg='history | grep $*'

#alias mongotunnel='ssh -N mmf@build01.mapmyfitness.com -L27018:suez01-internal.mapmyfitness.com:27017'

