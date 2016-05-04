BLUE='\e[94m'
CYAN='\e[96m'
RED='\e[31m'
END='\e[0m'

function msg(){
	echo -e ${BLUE}$@${END}
}

function alert(){
	echo -e ${RED}$@${END}
}

function cmd(){
	echo -e ${CYAN}$@${END}
	eval $@
}
