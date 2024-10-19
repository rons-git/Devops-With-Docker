#!/bin/bash
# Put passed script arguments into an array
scriptargs=("$@")
scrdir="$(dirname "$PWD")"/scripts
# Get the script data that matches the 2 characters passed to the function
getData() {
    retval=""
    # "${scriptargs[@]}" denotes each element in the passed script
    for i in "${scriptargs[@]}"; do
        # Determine whether the first 2 characters in the scriptargs element
        # matches the data passed to the function
        if [[ "$i" == "$1"?* ]]; then
            # Return all but the first 2 characters of the matching script array
            retval="${i:2}"; return
        fi
    done
}
#*** process "banner" data ***
getData "bn" && [[ -n "$retval" ]] && set +x && $scrdir/banner.sh "$retval"
#*** process "special instructions" data ***
getData "si" && [[ -n "$retval" ]] && set +x && $scrdir/instructions.sh "$retval"
#*** skip docker cleanup if $retval has data ***
getData "nd" && [[ -z "$retval" ]] && set +x && $scrdir/dockerscrub.sh
#*** skip file cleanup if $retval has data ***
getData "nf" && [[ -z "$retval" ]] && set +x && $scrdir/filescrub.sh
#*** process "copy code from source" data ***
getData "cp" && [[ -n "$retval" ]] && set +x && $scrdir/copyfiles.sh "$retval"
#*** display Dockerfiles ***
getData "ds" && [[ -z "$retval" ]] && set +x && $scrdir/dispdockfiles.sh
#*** display docker-compose.yml ***
getData "ds" && [[ -z "$retval" ]] && set +x && $scrdir/dispdockcomp.sh
#*** display configuration files ***
getData "ds" && [[ -z "$retval" ]] && set +x && $scrdir/dispdockconf.sh
#*** process "execute docker build and run" data ***
getData "br" && [[ -n "$retval" ]] && set +x && $scrdir/buildfiles.sh "$retval"
#*** process "show results" data ***
getData "sr" && [[ -n "$retval" ]] && set +x && $scrdir/showresults.sh "$retval"
#*** backup all POC files ***
getData "bu"
if [[ -z "$retval" ]]; then
    set +x && $scrdir/backupPOC.sh
elif [ "$retval" != "x*" ]; then
    set +x && nohup $scrdir/backupPOC.sh > /dev/null 2>&1 &
fi
