parse_git_branch() {
    git branch 2> /dev/null | sed -n -e 's/^\* \(.*\)/[\1]/p'
}

export COLOR_NC='\e[0m' # No Color
export COLOR_BLACK='\e[0;30m'
export COLOR_GRAY='\e[1;30m'
export COLOR_RED='\e[0;31m'
export COLOR_LIGHT_RED='\e[1;31m'
export COLOR_GREEN='\e[0;32m'
export COLOR_LIGHT_GREEN='\e[1;32m'
export COLOR_BROWN='\e[0;33m'
export COLOR_YELLOW='\e[1;33m'
export COLOR_BLUE='\e[0;34m'
export COLOR_LIGHT_BLUE='\e[1;34m'
export COLOR_PURPLE='\e[0;35m'
export COLOR_LIGHT_PURPLE='\e[1;35m'
export COLOR_CYAN='\e[0;36m'
export COLOR_LIGHT_CYAN='\e[1;36m'
export COLOR_LIGHT_GRAY='\e[0;37m'
export COLOR_WHITE='\e[1;37m'

#COLOR_DEF='%f'
#COLOR_USR='%F{243}'
#COLOR_GIT='%F{39}'
#NEWLINE=$'\n'
# setopt PROMPT_SUBST
#export PROMPT='${COLOR_USR}%n@%m %1~ ${COLOR_GIT}$(parse_git_branch)${COLOR_DEF}${NEWLINE}%% '

if [ "$(uname)" == "Darwin" ]; then
    # Do something under Mac OS X platform        
    setopt PROMPT_SUBST
    export PROMPT='${COLOR_USR}%n@%m %1~ ${COLOR_GIT}$(parse_git_branch)${COLOR_DEF}${NEWLINE}%% '
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
    # Do something under GNU/Linux platform
    # export PS1="$TITLEBAR\n\[${UC}\]\u \[${COLOR_LIGHT_BLUE}\]\${PWD} \[${COLOR_BLACK}\]\$($(__git_ps1 " (%s)")) \n\[${COLOR_LIGHT_GREEN}\]→\[${COLOR_NC}\ " 
fi