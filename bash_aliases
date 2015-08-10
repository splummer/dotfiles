# -------------------------------------------------------------------
# .bash_aliases
#
# Various aliases that I like and use.
# -------------------------------------------------------------------

# -------------------------------------------------------------------
# My General purpose aliases
# -------------------------------------------------------------------
alias ..='cd ..'
alias ...='cd ../..'
alias 1='cd -'
alias 2='cd +2'
alias 3='cd +3'
alias 4='cd +4'
alias 5='cd +5'
alias 6='cd +6'
alias 7='cd +7'
alias 8='cd +8'
alias 9='cd +9'
alias _=sudo
alias afind='ack-grep -il'
alias cd..='cd ..'
alias cd...='cd ../..'
alias cd....='cd ../../..'
alias cd.....='cd ../../../..'
export LS_OPTIONS='--color'
alias ls='ls $LS_OPTIONS -F'
alias l='ls $LS_OPTIONS -lahF'
alias ll='ls $LS_OPTIONS -lhF'
alias lll='ls $LS_OPTIONS -laF'
alias sl='ls $LS_OPTIONS' # often screw this up

# Show me the size (sorted) of only the folders in this directory
alias folders="find . -maxdepth 1 -type d -print | xargs du -sh | sort -rn"

# Show me all the large files from here down in the file system
alias findlarge="find / -type f -size +10M -exec ls -lh {} \;"

# Set vi to open vim for systems that have both
vi='vim'

# -------------------------------------------------------------------
# Yum
# -------------------------------------------------------------------
alias ys="yum search"                       # search package
alias yp="yum info"                         # show package info
alias yl="yum list"                         # list packages
alias ygl="yum grouplist"                   # list package groups
alias yli="yum list installed"              # print all installed packages
alias ymc="yum makecache"                   # rebuilds the yum package list

alias yu="sudo yum update"                  # upgrate packages
alias yi="sudo yum install"                 # install package
alias ygi="sudo yum groupinstall"           # install package group
alias yr="sudo yum remove"                  # remove package
alias ygr="sudo yum groupremove"            # remove pagage group
alias yrl="sudo yum remove --remove-leaves" # remove package and leaves
alias yc="sudo yum clean all"               # clean cache
