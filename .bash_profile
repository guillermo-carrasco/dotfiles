export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

# Source iterm2 helpers
source ~/repos_and_code/dotfiles/iterm2_helpers.sh

########################
## WWCRC aliases ##
########################

#Servers
alias cl01="mosh gcarrasco@hn01.tcrc.gla.ac.uk"
alias cl02="mosh gcarrasco@hn03.tcrc.gla.ac.uk"

##########################
## My aliases/utilities ##
##########################

#GIT stuff

function parse_git_branch () {
       git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

RED="\[\033[0;31m\]"
YELLOW="\[\033[0;33m\]"
GREEN="\[\033[0;32m\]"
NO_COLOUR="\[\033[0m\]"

# Prompt like: (virtualenv) cwd (git_branch) ~>
PS1=" $GREEN\w$YELLOW\$(parse_git_branch)$NO_COLOUR ~> "

alias gpom='git pull origin master'
alias gPom='git push origin master'
alias gpum='git pull upstream master'


#Vim runtime (MacOSX specific)
export VIMRUNTIME=/usr/local/Cellar/vim/7.4.826/share/vim/vim74/

#Locale stuff
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Git CLI autocompletion
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

# One command to extract them all
extract () {
  if [ $# -ne 1 ]
  then
    echo "Error: No file specified."
    return 1
  fi
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2) tar xvjf $1   ;;
      *.tar.gz)  tar xvzf $1   ;;
      *.bz2)     bunzip2 $1    ;;
      *.rar)     unrar x $1    ;;
      *.gz)      gunzip $1     ;;
      *.tar)     tar xvf $1    ;;
      *.tbz2)    tar xvjf $1   ;;
      *.tgz)     tar xvzf $1   ;;
      *.zip)     unzip $1      ;;
      *.Z)       uncompress $1 ;;
      *.7z)      7z x $1       ;;
      *)         echo "'$1' cannot be extracted via extract" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}


# Anaconda installation
export PATH="/Users/guillem/anaconda/bin:$PATH"
source activate master &> /dev/null

#Pebble SDK path
export PATH=$PATH:/Users/guillem/pebble-dev/PebbleSDK-2.9/bin

#Initialise docker-machine
alias docker-init="source /Applications/Docker/Docker\ Quickstart\ Terminal.app/Contents/Resources/Scripts/start.sh"

# Tmux 256 colors 
alias tmux="TERM=screen-256color-bce tmux"
