#!/bin/bash
source util.sh

function flow_a(){
	str=`python -c "print ' '*(12 + 2*$1) + '*'"`
	msg "$str"
	msg "Working dir.: B B A"
	msg "Index:        B A A"
	msg "Object store: A A A"
}

init reset

msg "[Using git reset]"
cmd "echo 'foo' > master_file"
cmd "git add master_file"
cmd "git commit -m 'Add master_file to master branch'"

flow_a 2
cmd "echo 'more foo' >> master_file"
cmd "git commit master_file -m 'Add more foo'"
cmd "git show-branch --more=5"
cmd "git reset --mixed HEAD^"
cmd "git show-branch --more=5"
inspect_d

flow_a 1
cmd "echo 'even more foo' >> master_file"
cmd "git add master_file"
cmd "git commit -m 'Updated foo.'"
cmd "git show-branch --more=5"
cmd "git reset --soft HEAD^"
cmd "git show-branch --more=5"
inspect_d

flow_a 3
cmd "git commit -m 'Even more foo'"
cmd "git show-branch --more=5"
cmd "git reset --hard HEAD^"
cmd "git show-branch --more=5"
inspect_d
