BLUE='\e[94m'
CYAN='\e[96m'
RED='\e[31m'
END='\e[0m'

function msg(){
	echo -e ${BLUE}"$@"${END}
}

function alert(){
	echo -e ${RED}$@${END}
}

function cmd(){
	echo -e ${CYAN}$@${END}
	eval $@
}

function silent(){
	eval $@ > /dev/null 2>&1
}

function inspect_d(){
	cmd "git diff"
	cmd "git diff HEAD"
	cmd "git diff --cached"
}

function init(){
	cmd "mkdir $@"
	cmd "cd $@"
	cmd "git init"
	git config user.name "Alice"
	git config user.email "alice@qoo.con"
}
