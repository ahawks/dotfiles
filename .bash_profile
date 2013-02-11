alias ll='ls -lG'
alias ls='ls -G'
#export PS1='\h:\W \u\$ ' #$(__git_ps1 "(%s)")'
alias gvim="open -a /Applications/MacVim.app"
alias te="open -a /Applications/TextEdit.app"
alias govagrant='cd ~/developer_vm/vagrant'

export WORKON_HOME=$HOME/.virtualenvs
source /usr/local/bin/virtualenvwrapper.sh
source /usr/local/git/contrib/completion/git-completion.bash
function pgb {
    ref=$(git symbolic-ref HEAD 2> /dev/null) || return
    echo "("${ref#refs/heads/}")"
}
#alias __git_ps1="git branch 2>/dev/null | grep '*' | sed 's/* \(.*\)/(\1)/' 2>/dev/null"
PROMPT_COMMAND="echo -n [\$(date +%H:%M:%S)]"
#PS1='[\u@\h \W$(__git_ps1 " (%s)")]\$ '
PS1='[\!][\u@\h \W$ $(pgb)]\n\$ '
#PS1='[\u@\h \W]\$ '

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
#alias python=ipython

#alias mongotunnel='ssh -N mmf@build01.mapmyfitness.com -L27018:suez01-internal.mapmyfitness.com:27017'

