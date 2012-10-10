# List directory contents after a 'cd'
function chpwd() {
     emulate -LR zsh
         ls -F
         }

# -------------------------------------------------------------------
# Functions 
# -------------------------------------------------------------------
# view man pages in Preview
function pman() { ps=`mktemp -t manpageXXXX`.ps ; man -t $@ > "$ps" ; open "$ps" ; }

# nice mount (http://catonmat.net/blog/another-ten-one-liners-from-commandlingfu-explained)
# displays mounted drive information in a nicely formatted manner
function nicemount() { (echo "DEVICE PATH TYPE FLAGS" && mount | awk '$2="";1') | column -t ; }
