# List direcory contents
export LS_OPTIONS='--color'
alias ls='ls $LS_OPTIONS -F'
alias l='ls $LS_OPTIONS -lahF'
alias ll='ls $LS_OPTIONS -lhF'
alias lll='ls $LS_OPTIONS -laF'
alias sl='ls $LS_OPTIONS' # often screw this up

# Set vi to open vim for systems that have both
vi='vim'

# Quick way to rebuild the Launch Services database and get rid
# of duplicates in the Open With submenu.
alias fixopenwith='/System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -kill -r -domain local -domain system -domain user'
