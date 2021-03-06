# List direcory contents
export LS_OPTIONS='--color'
alias ls='ls $LS_OPTIONS -F'
alias l='ls $LS_OPTIONS -lahF'
alias ll='ls $LS_OPTIONS -lhF'
alias lll='ls $LS_OPTIONS -laF'
alias sl='ls $LS_OPTIONS' # often screw this up


# gam aliases
export GAMCFGDIR="~/bin/GAMConfig"
alias cdgam='/Users/plummer/bin/GAMWorking'
alias gam='/Users/plummer/bin/gam/gam/gam'
alias gam3='/Users/plummer/bin/gamadv-xtd3/gam'

# Set vi to open vim for systems that have both
vi='vim'

# A way to update all packaeges installed with pip at once
alias pipupdateall='pip3 freeze --local | grep -v '^\-e' | cut -d = -f 1  | xargs pip install -U'

# Quick way to rebuild the Launch Services database and get rid
# of duplicates in the Open With submenu.
alias fixopenwith='/System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -kill -r -domain local -domain system -domain user'

# Show me all the large files from here down in the file system
alias findlarge='find / -type f -size +10M -exec ls -lh {} \;'

# Show me the size (sorted) of only the folders in this directory
alias folders='find . -maxdepth 1 -type d -print | xargs du -sh | sort -rn'
