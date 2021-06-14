alias lh="ls -lh";
#alias ls="ls -GhF --color=auto";
umask 0002
export HISTCONTROL=ignoredups
export HISTSIZE=1000
alias l.='ls -d .* --color=auto'
alias ll='ls -l --color=auto'

#alias go='/afs/nd.edu/user14/csesoft/2017-fall/anaconda3/bin/go'
VISUAL=editor; export VISUAL EDITOR=vim; export EDITOR
#eval "$(ssh-agent -s)"
#ssh-add ~/.ssh/id_rsa

export PATH="/usr/local/opt/sqlite/bin:$PATH"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion




FIRST='\[\033[38;5;6m\]'
DIRECTORY='\033[38;5;196m\]'
DATE='\[\033[38;5;10m\]\[\033[48;5;92m\]'
TIME='\[\033[38;5;7m\]'
RESET='\[$(tput sgr0)\]'
GREEN='\033[38;5;10m\]'
# get current branch in git repo
function parse_git_branch() {	
    BRANCH=`git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'`	
    if [ ! "${BRANCH}" == "" ]	
    then		
        echo "${BRANCH}"	
    else		
        echo ""	
    fi
}

export PS1="${FIRST}\$${RESET} ${DIRECTORY}\W${RESET} ${GREEN}(\`parse_git_branch\`)${RESET} ${DATE}\d${RESET} ${TIME}\t${RESET}\n${FIRST}>${RESET} "
# GIT STUFF
alias newb="git checkout -b"
alias pushb="git push -u origin \`parse_git_branch\`"
alias commitm="git commit -m "





