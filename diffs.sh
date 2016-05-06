#!/bin/bash
source util.sh
init diff_example

function flow_d(){
	str=`python -c "print ' '*(12 + 2*$1) + '*'"`
	msg "$str"
	msg "Working dir.: A B B C C"
	msg "Index:        A A B B B"
	msg "Object store: A A A A B"
}

msg "[Simple git diff Example]"
cmd "echo 'foo' > file1"
cmd "echo 'bar' > file2"

flow_d 1
cmd "git add file1 file2"
cmd "git commit -m 'Add file1 and file2'"

flow_d 2
cmd "echo 'quux' > file1"
inspect_d

flow_d 3
cmd "git add file1"
cmd "git status"
inspect_d

flow_d 4
cmd "echo 'baz' > file1"
inspect_d

flow_d 5
cmd "git commit -m 'quux will be commited'"
cmd "git diff HEAD^ HEAD"
cmd "git diff"
