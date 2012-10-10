# -------------------------------------------------------------------
# .bash_aliases
#
# Various aliases that I like and use.
# -------------------------------------------------------------------

# -------------------------------------------------------------------
# My General purpose aliases
# -------------------------------------------------------------------
export LS_OPTIONS='--color'
alias lh='ls $LS_OPTIONS -aF | egrep "^\."'
alias ls='ls $LS_OPTIONS -F'
alias lsa='ls $LS_OPTIONS -lahF'
alias l='ls $LS_OPTIONS -laF'
alias ll='ls $LS_OPTIONS -lF'
alias lll='ls $LS_OPTIONS -lahF'
alias sl='ls $LS_OPTIONS' # often screw this up

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