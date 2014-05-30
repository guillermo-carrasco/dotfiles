export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
export PS1="\h: \W -> "

# Source iterm2 helpers
source ~/repos/dotfiles/iterm2_helpers.sh

########################
## SciLifeLab aliases ##
########################

#Servers
alias uppmax='ssh guilc@kalkyl.uppmax.uu.se'
alias milou='tab_maroon \"milou cluster\"; ssh guilc@milou.uppmax.uu.se'
alias b5='tab_blue \"b5\"; ssh guillermo.carrasco@b5.biotech.kth.se'
alias biologin='tab_maroon \"milou cluster\"; ssh guilc@milou-b.uppmax.uu.se'
alias galerina='ssh guillermo.carrasco@galerina.biotech.kth.se'
alias comicbookguy='ssh guillermo.carrasco@comicbookguy.scilifelab.se'
alias genologics='tab_green \"Genologics\"; ssh guillermo.carrasco@genologics.scilifelab.se'
alias genologics-stage='tab_green \"Genologics (stage)\"; ssh guillermo.carrasco@genologics-stage.scilifelab.se'
alias tools='tab_dark_salmon \"Tools\"; ssh guillermo.carrasco@tools.scilifelab.se -p 5912'
alias tools-dev="tab_dark_salmon; title \"Tools (dev)\"; ssh guillermo.carrasco@tools-dev.scilifelab.se"
alias nas1="tab_gold \"NAS 1\"; ssh guillermo.carrasco@seq-nas-1.scilifelab.se"
alias nas2="tab_gold \"NAS 2\"; ssh guillermo.carrasco@seq-nas-2.scilifelab.se"
alias nas3="tab_gold \"NAS 3\"; ssh guillermo.carrasco@seq-nas-3.scilifelab.se"


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

PS1="$NO_COLOUR\u@\h$NO_COLOUR:\w$YELLOW\$(parse_git_branch)$NO_COLOUR\$ "

alias gpom='git pull origin master'
alias gPom='git push origin master'
alias gpum='git pull upstream master'


#Vim runtime
export VIMRUNTIME=/usr/local/Cellar/vim/7.4.273/share/vim/vim74/

#Locale stuff
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

#added by Anaconda 1.9.1 installer
export PATH="/Users/guillem/anaconda/bin:$PATH"
source activate master

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

